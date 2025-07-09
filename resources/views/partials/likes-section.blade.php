<div class="flex items-center space-x-3 pt-2"> 
    <div class="flex items-center">
        @foreach ($post->likes->take(3) as $like)
            <img src="{{ $like->user->avatar ? asset('uploads/profile-pictures/' . $like->user->avatar) : asset('uploads/profile-pictures/blank.png') }}"
            alt=""
            class="w-6 h-6 rounded-full border-2 border-white dark:border-gray-900 {{ !$loop->first ? '-ml-2' : '' }}">
        @endforeach
    </div>
    <div class="dark:text-gray-100">
        <div>
            @if ($post->likes->isNotEmpty())
                Liked by <strong>{{ $post->likes->first()->user->first_name }}</strong>
                @if ($post->likes->count() > 1)
                    and <strong>{{ $post->likes->count() - 1 }} {{ Str::plural('other', $post->likes->count() - 1) }}</strong>
                @endif
            @endif
        </div>
    </div>
</div>