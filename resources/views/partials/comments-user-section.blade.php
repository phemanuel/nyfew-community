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