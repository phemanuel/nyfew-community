<div class="card lg:mx-0 uk-animation-slide-bottom-small"> 
                                    <!-- Post Header -->
                                    <div class="flex justify-between items-center lg:p-4 p-2.5">
                                        <div class="flex flex-1 items-center space-x-4">
                                            <a href="#">
                                                <img src="{{ $post->user->avatar ? asset('uploads/profile-pictures/' . $post->user->avatar) : asset('uploads/profile-pictures/blank.jpg') }}" class="bg-gray-200 border border-white rounded-full w-10 h-10">
                                            </a>
                                            <div class="flex-1 font-semibold capitalize">
                                                <a href="#" class="text-black dark:text-gray-100"> {{ $post->user->first_name . " ". $post->user->last_name . " " .  $post->user->middle_name }} </a>
                                                <div class="text-sm text-gray-600 dark:text-gray-300 flex items-center gap-2 mt-1">
                                                    <ion-icon name="people" class="text-blue-500 text-base"></ion-icon>
                                                    <span>{{ $post->created_at->diffForHumans() }}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <!-- Dropdown -->
                                            <a href="#"><i class="icon-feather-more-horizontal text-2xl hover:bg-gray-200 rounded-full p-2 transition -mr-1 dark:hover:bg-gray-700"></i></a>
                                            <div class="bg-white w-56 shadow-md mx-auto p-2 mt-12 rounded-md text-gray-500 hidden text-base border border-gray-100 dark:bg-gray-900 dark:text-gray-100 dark:border-gray-700" 
                                                                uk-drop="mode: click;pos: bottom-right;animation: uk-animation-slide-bottom-small">
                                                                
                                                                    <ul class="space-y-1">
                                                                        @if(auth()->id() !== $post->user_id)
                                                                        <!-- Save Post -->
                                                                        <li>
                                                                            <a href="#" class="flex items-center px-4 py-2 rounded-md hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-800">
                                                                                <i class="uil-bookmark mr-2 text-blue-500"></i> Save Post
                                                                            </a>
                                                                        </li>

                                                                        <!-- Turn on Notification -->
                                                                        <li>
                                                                            <a href="#" class="flex items-center px-4 py-2 rounded-md hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-800">
                                                                                <i class="uil-bell mr-2 text-green-500"></i> Turn on Notification
                                                                            </a>
                                                                        </li>

                                                                        <!-- Report Post -->
                                                                        <li>
                                                                            <a href="#" class="flex items-center px-4 py-2 rounded-md hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-800">
                                                                                <i class="uil-exclamation-triangle mr-2 text-yellow-500"></i> Report Post
                                                                            </a>
                                                                        </li>

                                                                        <!-- Unfollow/Block -->
                                                                        <li>
                                                                            <a href="#" class="flex items-center px-4 py-2 rounded-md transition-colors duration-200 hover:bg-gray-100 hover:text-red-600 dark:hover:bg-gray-800 dark:hover:text-red-400">
                                                                                <i class="uil-user-times mr-2 text-red-500"></i>
                                                                                <span>Unfollow/Block {{ $post->user->last_name . ' ' . $post->user->first_name }}</span>
                                                                            </a>
                                                                        </li>
                                                                        @endif
                                                                        <!-- Divider -->
                                                                        <!-- <li><hr class="-mx-2 my-2 dark:border-gray-800"></li> -->

                                                                        <!-- Show only if the authenticated user owns the post -->
                                                                        @if(auth()->check() && auth()->id() === $post->user_id)
                                                                            <!-- Edit Post -->
                                                                            <li>
                                                                                <a href="#" class="flex items-center px-4 py-2 rounded-md hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-800">
                                                                                    <i class="uil-edit-alt mr-2 text-indigo-500"></i> Edit Post
                                                                                </a>
                                                                            </li>

                                                                            <!-- Delete Post -->
                                                                            <li>
                                                                                <a href="#" class="flex items-center px-4 py-2 rounded-md text-red-500 hover:bg-red-100 hover:text-red-500 dark:hover:bg-red-600">
                                                                                    <i class="uil-trash-alt mr-2"></i> Delete
                                                                                </a>
                                                                            </li>
                                                                        @endif
                                                                    </ul>
                                                                
                                                                </div>
                                        </div>
                                    </div>

                                    <!-- Post Content -->
                                    <div class="p-5 pt-0 border-b dark:border-gray-700">
                                        {{ $post->content }}
                                    </div>

                                    <!-- Post Interactions -->
                                    <div class="p-4 space-y-3">
                                        <div class="flex space-x-4 lg:font-bold">            
                                            <a href="javascript:void(0)" class="like-btn flex items-center space-x-2" data-post-id="{{ $post->id }}">
                                                <div class="p-2 rounded-full text-black lg:bg-gray-100 dark:bg-gray-600">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" width="22" height="22" class="dark:text-gray-100">
                                                        <path d="M2 10.5a1.5 1.5 0 113 0v6a1.5 1.5 0 01-3 0v-6zM6 10.333v5.43a2 2 0 001.106 1.79l.05.025A4 4 0 008.943 18h5.416a2 2 0 001.962-1.608l1.2-6A2 2 0 0015.56 8H12V4a2 2 0 00-2-2 1 1 0 00-1 1v.667a4 4 0 01-.8 2.4L6.8 7.933a4 4 0 00-.8 2.4z" />
                                                    </svg>
                                                </div>
                                                <div class="like-count">{{ $post->likes->count() }}</div>
                                            </a>
                                            <a href="#" class="flex items-center space-x-2" data-post-id="{{ $post->id }}">
                                                <div class="p-2 rounded-full  text-black lg:bg-gray-100 dark:bg-gray-600">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" width="22" height="22" class="dark:text-gray-100">
                                                                                <path fill-rule="evenodd" d="M18 5v8a2 2 0 01-2 2h-5l-5 4v-4H4a2 2 0 01-2-2V5a2 2 0 012-2h12a2 2 0 012 2zM7 8H5v2h2V8zm2 0h2v2H9V8zm6 0h-2v2h2V8z" clip-rule="evenodd" />
                                                                            </svg>
                                                                        </div>
                                               <div class="comment-count" data-post-id="{{ $post->id }}">{{ $post->comments->count() }}</div>
                                            </a>
                                            <a href="#" class="flex items-center space-x-2 flex-1 justify-end">
                                                                        <div class="p-2 rounded-full  text-black lg:bg-gray-100 dark:bg-gray-600">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" width="22" height="22" class="dark:text-gray-100">
                                                                                <path d="M15 8a3 3 0 10-2.977-2.63l-4.94 2.47a3 3 0 100 4.319l4.94 2.47a3 3 0 10.895-1.789l-4.94-2.47a3.027 3.027 0 000-.74l4.94-2.47C13.456 7.68 14.19 8 15 8z" />
                                                                            </svg>
                                                                        </div>
                                                                        <div> Share</div>
                                            </a>
                                        </div>


                                        <div id="likes-section-{{ $post->id }}">
                                            {{-- Existing likes UI here --}}
                                            <!-- Example Likes Display -->
                                            <div class="flex items-center space-x-3 pt-2"> 
                                                <div class="flex items-center">
                                                    @foreach ($post->likes->take(3) as $like)
                                                        <img src="{{ $like->user->avatar ? asset('uploads/profile-pictures/' . $like->user->avatar) : asset('uploads/profile-pictures/blank.png') }}"
                                                        alt=""
                                                        class="w-6 h-6 rounded-full border-2 border-white dark:border-gray-900 {{ !$loop->first ? '-ml-2' : '' }}">
                                                    @endforeach
                                                </div>
                                                <div class="dark:text-gray-100">
                                                    <div class="like-summary">
                                                        @if ($post->likes->isNotEmpty())
                                                            <div class="dark:text-gray-100">
                                                                Liked by <strong>{{ $post->likes->first()->user->first_name }}</strong>
                                                                @if ($post->likes->count() > 1)
                                                                    and <strong>{{ $post->likes->count() - 1 }} {{ Str::plural('other', $post->likes->count() - 1) }}</strong>
                                                                @endif
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </div>        

                                        <!-- Comments Container -->
                                        <div id="comments-section-{{ $post->id }}">
                                            {{-- Existing comments UI here --}}
                                            <!-- Comments (show only 2) -->
                                            <div class="border-t py-4 space-y-4 dark:border-gray-600">
                                                @foreach ($post->comments->sortByDesc('created_at')->take(2) as $comment)
                                                    <div class="flex">
                                                        <div class="w-10 h-10 rounded-full relative flex-shrink-0">
                                                            <img src="{{ $comment->user->avatar ? asset('uploads/profile-pictures/' . $comment->user->avatar) : asset('uploads/profile-pictures/blank.png') }}" alt="" class="absolute h-full rounded-full w-full">
                                                        </div>
                                                        <div>
                                                            <div class="text-gray-700 py-2 px-3 rounded-md bg-gray-100 relative lg:ml-5 ml-2 lg:mr-12 dark:bg-gray-800 dark:text-gray-100">
                                                                <strong><p class="leading-6">{{ $comment->user->first_name }} {{ $comment->user->last_name }}</p></strong>
                                                                <p class="leading-6">{{ $comment->comment }}</p>
                                                                <div class="absolute w-3 h-3 top-3 -left-1 bg-gray-100 transform rotate-45 dark:bg-gray-800"></div>
                                                            </div>
                                                            <div class="text-xs flex items-center space-x-3 mt-2 ml-5">
                                                                <span>{{ $comment->created_at->diffForHumans() }}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach

                                                @if ($post->comments->count() > 2)
                                                    <div>
                                                        <a href="javascript:void(0)" class="text-blue-500 text-sm" onclick="loadCommentsModal({{ $post->id }})">
                                                            View all {{ $post->comments->count() }} comments
                                                        </a>
                                                    </div>
                                                @endif
                                            </div>

                                            <!-- Comments Modal -->
                        
                                        
                                        <!-- comment as a user -->
                                                <div class="bg-gray-100 rounded-full relative dark:bg-gray-800 border-t">
                                                    <input 
                                                    class="comment-input" 
                                                    data-post-id="{{ $post->id }}"
                                                    placeholder="Leave a Comment.. {{ auth()->user()->first_name }}"  
                                                    style="border: 1px solid rgb(158, 152, 38); color: black; background: transparent; padding: 10px; border-radius: 4px;"
                                                    >
                                                <div class="-m-0.5 absolute bottom-0 flex items-center right-3 text-xl">
                                                                        <a href="#">
                                                                            <ion-icon name="happy-outline" class="hover:bg-gray-200 p-1.5 rounded-full"></ion-icon>
                                                                        </a>
                                                                        <a href="#">
                                                                            <ion-icon name="image-outline" class="hover:bg-gray-200 p-1.5 rounded-full"></ion-icon>
                                                                        </a>
                                                                        <a href="#">
                                                                            <ion-icon name="link-outline" class="hover:bg-gray-200 p-1.5 rounded-full"></ion-icon>
                                                                        </a> 
                                                </div>
                                        </div>

                                    </div>
                            </div>

                            </div>

                            <!-- Comments Modal -->
<div id="comments-modal" class="hidden fixed inset-0 z-50 bg-black bg-opacity-50 flex justify-center items-center">
    <div class="bg-white dark:bg-gray-800 w-full max-w-2xl p-6 rounded-lg overflow-y-auto max-h-[80vh] relative">
        <button onclick="closeCommentsModal()" class="absolute top-2 right-2 text-gray-500 hover:text-red-500">✖</button>
        <h3 class="text-lg font-semibold mb-4 text-gray-800 dark:text-gray-100">All Comments (<span id="modal-comment-count">0</span>)</h3>
        <div id="modal-comments-body" class="space-y-4">
            <!-- Comments will be injected here -->
        </div>
    </div>
</div>


                        