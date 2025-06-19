<?php

namespace Database\Factories;
use App\Models\Post;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $directory = public_path('uploads/posts');
        if (!file_exists($directory)) {
            mkdir($directory, 0755, true);
        }

        $scenario = rand(1, 6);
        $imagePaths = [];
        $videoPaths = [];

        $dummyVideos = [
            'https://www.w3schools.com/html/mov_bbb.mp4',
            'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
            'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4'
        ];

        switch ($scenario) {
            case 1: // Text only
                $type = 'text';
                $images = null;
                $videos = null;
                break;

            case 2: // Text + 1 image
                $type = 'image';
                $imagePaths[] = $this->downloadImage($directory);
                $images = json_encode($imagePaths);
                $videos = null;
                break;

            case 3: // Text + multiple images
                $type = 'image';
                for ($i = 0; $i < rand(2, 4); $i++) {
                    $imagePaths[] = $this->downloadImage($directory);
                }
                $images = json_encode($imagePaths);
                $videos = null;
                break;

            case 4: // Text + 1 video
                $type = 'video';
                $videos = json_encode([$dummyVideos[array_rand($dummyVideos)]]);
                $images = null;
                break;

            case 5: // Text + image(s) + video
                $type = 'image+video';
                for ($i = 0; $i < rand(1, 2); $i++) {
                    $imagePaths[] = $this->downloadImage($directory);
                }
                $images = json_encode($imagePaths);
                $videos = json_encode([$dummyVideos[array_rand($dummyVideos)]]);
                break;

            case 6: // Text + multiple videos
                $type = 'video';
                $videos = json_encode(array_rand(array_flip($dummyVideos), rand(2, 3)));
                $images = null;
                break;
        }

        return [
            'content' => $this->faker->realText(200),
            'image' => $images,
            'video' => $videos,
            'type' => $type,
            'visibility' => $this->faker->randomElement(['public', 'private', 'friends']),
        ];
    }

    private function downloadImage($directory): string
    {
        $imageUrl = 'https://picsum.photos/640/480';
        $imageContents = file_get_contents($imageUrl);
        $imageName = 'post_' . Str::random(10) . '.jpg';
        $imagePath = $directory . '/' . $imageName;
        file_put_contents($imagePath, $imageContents);

        return 'uploads/posts/' . $imageName;
    }
}
