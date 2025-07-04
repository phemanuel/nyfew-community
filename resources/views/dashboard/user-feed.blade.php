<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.foxthemes.net/socialite/feed.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 20 Jul 2023 17:40:27 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link href="{{asset('dashboard/assets/images/favicon.png')}}" rel="icon" type="image/png">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.19.3/dist/css/uikit.min.css" /> -->

    <!-- Basic Page Needs
        ================================================== -->
    <title>NYFEW :: User Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="NYFEW - Community Platform that brings skilled youth together.">

    <!-- icons
    ================================================== -->
    <link rel="stylesheet" href="{{asset('dashboard/assets/css/icons.css')}}">

    <!-- CSS 
    ================================================== --> 
    <link rel="stylesheet" href="{{asset('dashboard/assets/css/uikit.css')}}">
    <link rel="stylesheet" href="{{asset('dashboard/assets/css/style.css')}}">
    <link href="{{asset('dashboard/assets/css/tailwind.css')}}" rel="stylesheet"> 

<body>
   
     
    <div id="wrapper">       

        @include('partials.nav-header')
        @include('partials.nav-sidebar')

        </div> 

        <!-- Main Contents -->
        <div class="main_content">
            <div class="mcontainer">
                
                <!--  Feeds  -->
                <div class="lg:flex lg:space-x-10">
                    <div class="lg:w-3/4 lg:px-20 space-y-7">
                
                        <!-- user story -->
                        <div class="user_story grid md:grid-cols-5 grid-cols-3 gap-2 lg:-mx-20 relative">
                
                            <a href="#create-post" uk-toggle="target: body ; cls: story-active">
                                <div class="single_story">
                                    <img src="{{asset('uploads/adverts/d1.png')}}" alt="">
                                    <div class="story-avatar"> <img src="{{asset('uploads/adverts/d1.png')}}" alt=""></div>
                                    <!-- <div class="story-content"> <h4>Erica Jones </h4> </div> -->
                                </div>
                            </a>
                            <a href="#" uk-toggle="target: body ; cls: story-active">
                                <div class="single_story">
                                    <img src="{{asset('uploads/adverts/d4.png')}}" alt="">
                                    <div class="story-avatar"> <img src="{{asset('uploads/adverts/d4.png')}}" alt=""></div>
                                    <!-- <div class="story-content"> <h4>  Dennis Han</h4> </div> -->
                                </div>
                            </a>
                            <a href="#" uk-toggle="target: body ; cls: story-active">
                                <div class="single_story">
                                    <img src="{{asset('uploads/adverts/d7.png')}}" alt="">
                                    <div class="story-avatar"> <img src="{{asset('uploads/adverts/d7.png')}}" alt=""></div>
                                    <!-- <div class="story-content"> <h4> Alex Mohani</h4> </div> -->
                                </div>
                            </a>
                            <a href="#" uk-toggle="target: body ; cls: story-active">
                                <div class="single_story">
                                    <img src="{{asset('uploads/adverts/d2.png')}}" alt="">
                                    <div class="story-avatar"> <img src="{{asset('uploads/adverts/d2.png')}}" alt=""></div>
                                    <!-- <div class="story-content"> <h4> Jonathan </h4> </div> -->
                                </div>
                            </a>
                            <a href="#" uk-toggle="target: body ; cls: story-active">
                                <div class="single_story">
                                    <img src="{{asset('uploads/adverts/p2.png')}}" alt="">
                                    <div class="story-avatar"> <img src="{{asset('uploads/adverts/p2.png')}}" alt=""></div>
                                    <!-- <div class="story-content"> <h4> Stella Johnson</h4> </div> -->
                                </div>
                            </a>
                            
                            <span class="absolute bg-white lg:flex items-center justify-center p-2 rounded-full 
                            shadow-md text-xl w-9 z-10 uk-position-center-right -mr-4 hidden" uk-toggle="target: body ; cls: story-active"> 
                            <i class="icon-feather-chevron-right"></i></span>
                            
                        </div>
                        
                        <!-- create post -->
                        <div class="card lg:mx-0 p-4" uk-toggle="target: #create-post-modal">
                            <div class="flex space-x-3">
                                <img src="{{ asset('uploads/profile-pictures/' . (auth()->user()->avatar ?? 'blank.png')) }}" class="w-10 h-10 rounded-full">
                                <input
                                    id="createPostTrigger"
                                    placeholder="{{ 'Got something to share, ' . auth()->user()->first_name . '!' }}"
                                    class="bg-gray-100 hover:bg-gray-200 flex-1 h-10 px-6 rounded-full"
                                    data-avatar="{{ asset('uploads/profile-pictures/' . (auth()->user()->avatar ?? 'blank.png')) }}"
                                    data-name="{{ auth()->user()->first_name }}"
                                >
                            </div>
                            <div class="grid grid-flow-col pt-3 -mx-1 -mb-1 font-semibold text-sm">
                                <div class="hover:bg-gray-100 flex items-center p-1.5 rounded-md cursor-pointer"> 
                                    <svg class="bg-blue-100 h-9 mr-2 p-1.5 rounded-full text-blue-600 w-9 -my-0.5 hidden lg:block" data-tippy-placement="top" title="Tooltip" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
                                    Photo/Video 
                                </div>
                                <div class="hover:bg-gray-100 flex items-center p-1.5 rounded-md cursor-pointer"> 
                                    <svg class="bg-green-100 h-9 mr-2 p-1.5 rounded-full text-green-600 w-9 -my-0.5 hidden lg:block" uk-tooltip="title: Messages ; pos: bottom ;offset:7" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" title="" aria-expanded="false"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z"></path></svg>
                                    Tag Friend 
                                </div>
                                <div class="hover:bg-gray-100 flex items-center p-1.5 rounded-md cursor-pointer"> 
                                    <svg class="bg-red-100 h-9 mr-2 p-1.5 rounded-full text-red-600 w-9 -my-0.5 hidden lg:block" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                                     Fealing /Activity 
                                </div>
                            </div> 
                        </div>                       
                        
                        
                                     
                        @foreach ($posts as $post)
<div class="card lg:mx-0 uk-animation-slide-bottom-small"> 
    <!-- Post Header -->
    <div class="flex justify-between items-center lg:p-4 p-2.5">
        <div class="flex flex-1 items-center space-x-4">
            <a href="#">
                <img src="{{ $post->user->avatar ? asset('uploads/profile-pictures/' . $post->user->avatar) : asset('uploads/profile-pictures/blank.jpg') }}" class="bg-gray-200 border border-white rounded-full w-10 h-10">
            </a>
            <div class="flex-1 font-semibold capitalize">
                <a href="#" class="text-black dark:text-gray-100"> {{ $post->user->last_name . " " . $post->user->first_name . " ". $post->user->middle_name }} </a>
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
            <a href="#" class="flex items-center space-x-2">
                <div class="p-2 rounded-full  text-black lg:bg-gray-100 dark:bg-gray-600">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" width="22" height="22" class="dark:text-gray-100">
                                                <path fill-rule="evenodd" d="M18 5v8a2 2 0 01-2 2h-5l-5 4v-4H4a2 2 0 01-2-2V5a2 2 0 012-2h12a2 2 0 012 2zM7 8H5v2h2V8zm2 0h2v2H9V8zm6 0h-2v2h2V8z" clip-rule="evenodd" />
                                            </svg>
                                        </div>
                <div>{{ $post->comments->count() }}</div>
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

        <!-- Comments Container -->
        <div id="comments-section-{{ $post->id }}">
            {{-- Existing comments UI here --}}
            <!-- Comments -->
            <div class="border-t py-4 space-y-4 dark:border-gray-600">
                @foreach ($post->comments->take(2) as $comment)
                    <div class="flex">
                        <div class="w-10 h-10 rounded-full relative flex-shrink-0">
                            <img src="{{ $comment->user->avatar ? asset('uploads/profile-pictures/' . $comment->user->avatar) : asset('uploads/profile-pictures/blank.png') }}" alt="" class="absolute h-full rounded-full w-full">
                        </div>
                        <div>
                            <div class="text-gray-700 py-2 px-3 rounded-md bg-gray-100 relative lg:ml-5 ml-2 lg:mr-12 dark:bg-gray-800 dark:text-gray-100">
                                <p class="leading-6">{{ $comment->comment }}</p>
                                <div class="absolute w-3 h-3 top-3 -left-1 bg-gray-100 transform rotate-45 dark:bg-gray-800"></div>
                            </div>
                            <div class="text-xs flex items-center space-x-3 mt-2 ml-5">
                                <span>{{ $comment->created_at->diffForHumans() }}</span>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        
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
@endforeach
  
                
                        <div class="flex justify-center mt-6">
                            <a href="#" class="bg-white dark:bg-gray-900 font-semibold my-3 px-6 py-2 rounded-full shadow-md dark:bg-gray-800 dark:text-white">
                                Load more ..</a>
                        </div>
                
                    </div>
                    <div class="lg:w-72 w-full">
                
                        <a href="#birthdays" uk-toggle>
                            <div class="bg-white mb-5 px-4 py-3 rounded-md shadow">
                                <h3 class="font-semibold mb-1">Birthdays</h3>

                               @php
                                    $filteredBirthdayUsers = $birthdayUsers->filter(function ($user) {
                                        return (int) $user->id !== (int) auth()->id();
                                    });
                                @endphp

                                @if($filteredBirthdayUsers->count() > 0)
                                    @php
                                        $first = $filteredBirthdayUsers->first();
                                        $othersCount = $filteredBirthdayUsers->count() - 1;
                                    @endphp

                                    <div class="-mx-2 duration-300 flex hover:bg-gray-50 px-2 py-2 rounded-md">
                                        <img src="{{ asset('dashboard/assets/images/icons/gift-icon.png') }}" class="w-9 h-9 mr-3" alt="">

                                        <p class="line-clamp-2 leading-6">
                                            <strong>{{ $first->first_name }} {{ $first->last_name }}</strong>
                                            @if($othersCount > 0)
                                                and <strong>{{ $othersCount }} other{{ $othersCount > 1 ? 's' : '' }}</strong>
                                            @endif
                                            have birthday{{ $filteredBirthdayUsers->count() > 1 ? 's' : '' }} today.
                                        </p>
                                    </div>
                                @else
                                    <div class="-mx-2 duration-300 flex hover:bg-gray-50 px-2 py-2 rounded-md">
                                        <img src="{{ asset('dashboard/assets/images/icons/gift-icon.png') }}" class="w-9 h-9 mr-3" alt="">
                                        <p class="line-clamp-2 leading-6">No birthdays today.</p>
                                    </div>
                                @endif

                            </div>
                        </a>


                        <!-- ----contacts begin -->
                                    <h3 class="text-xl font-semibold">Contacts</h3>

                            <div class="" uk-sticky="offset:80">
                                <nav class="responsive-nav border-b extanded mb-2 -mt-2">
                                <ul uk-switcher="connect: #group-details; animation: uk-animation-fade">
                                        <li class="uk-active"><a class="active" href="#0">Members <span>{{ $members->count() }}</span></a></li>
                                        <li><a href="#0">Groups <span>{{ $groups->count() }}</span></a></li>
                                    </ul>
                                </nav>

                                        <ul id="group-details" class="uk-switcher">
                                        {{-- Friends tab --}}
                                        <li>
                                            <div class="contact-list" style="max-height: 350px; overflow-y: auto;">
                                                @foreach($members as $member)
                                                    <a href="#"
                                                    class="contact-item"
                                                    data-avatar="{{ asset('uploads/profile-pictures/' . ($member->avatar ?? 'blank.png')) }}"
                                                    data-name="{{ $member->last_name . ' ' . $member->first_name . ' ' . $member->middle_name }}"
                                                    data-status="{{ $member->is_online ? 'Online' : 'Offline' }}"
                                                    data-message-url="#"
                                                    data-chat-url="#"
                                                    onclick="openMemberModal(this)">
                                                        <div class="contact-avatar">
                                                            <img src="{{ asset('uploads/profile-pictures/' . ($member->avatar ?? 'blank.png')) }}" alt="">
                                                            <span class="user_status {{ $member->is_online ? 'status_online' : '' }}"></span>
                                                        </div>
                                                        <div class="contact-username">
                                                            {{ $member->last_name . ' ' . $member->first_name . ' ' . $member->middle_name }}
                                                        </div>
                                                    </a>
                                                    <!-- Popup for user info -->
                                                    <div uk-drop="pos: left-center ;animation: uk-animation-slide-left-small">
                                                            <div class="contact-list-box">
                                                                <div class="contact-avatar">
                                                                    <img src="{{ asset('uploads/profile-pictures/' . ($member->avatar ?? 'blank.png')) }}" alt="">
                                                                    <!-- <span class="user_status status_online"></span> -->
                                                                </div>
                                                                <div class="contact-username">   {{ $member->last_name . ' ' . $member->first_name . ' ' . $member->middle_name }}</div>
                                                                <p class="text-gray-700 dark:text-gray-300 flex items-center gap-2 justify-center text-center">
                                                                    <ion-icon name="people" class="text-lg text-blue-500"></ion-icon>
                                                                    <strong>
                                                                        @if(!empty($member->bio))
                                                                            {{ $member->bio }}
                                                                        @else
                                                                            <span class="italic text-gray-400">No bio provided yet.</span>
                                                                        @endif
                                                                    </strong>
                                                                </p>
                                                                <div class="contact-list-box-btns">
                                                                    <button type="button" class="button primary flex-1 block mr-2">
                                                                        <i class="uil-envelope mr-1"></i> Send message</button>
                                                                    <button type="button"  href="#" class="button secondary button-icon mr-2">
                                                                        <i class="uil-list-ul"> </i> </button>
                                                                    <button type="button" a href="#" class="button secondary button-icon"> 
                                                                        <i class="uil-ellipsis-h"> </i> 
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <!-- end -->
                                                @endforeach
                                            </div>
                                        </li>

                                        {{-- Groups tab --}}
                                        <li>
                                            <div class="contact-list" style="max-height: 350px; overflow-y: auto;">
                                                @foreach($groups as $group)
                                                    <a href="#"
                                                    data-name="{{ $group->name }}"
                                                    data-description="{{ $group->description ?? 'No description available' }}"
                                                    data-view-url="#"
                                                    onclick="openGroupModal(this)">
                                                    <div class="contact-avatar">
                                                            <img src="{{ asset('uploads/groups/' . ($group->avatar ?? 'blank.png')) }}" alt="">
                                                            <!-- <span class="user_status {{ $member->is_online ? 'status_online' : '' }}"></span> -->
                                                        </div>
                                                        <div class="contact-username">{{ $group->name }}</div>
                                                    </a>
                                                     <!-- Popup for user info -->
                                                    <div uk-drop="pos: left-center ;animation: uk-animation-slide-left-small">
                                                            <div class="contact-list-box">
                                                                <div class="contact-avatar">
                                                                    <img src="{{ asset('uploads/groups/' . ($group->avatar ?? 'blank.png')) }}" alt="">
                                                                    <!-- <span class="user_status status_online"></span> -->
                                                                </div>
                                                                <div class="contact-username">   {{ $group->name }}</div>
                                                                <p class="text-gray-700 dark:text-gray-300 flex items-center gap-2 justify-center text-center">
                                                                    <ion-icon name="people" class="text-lg text-blue-500"></ion-icon>
                                                                    <strong>
                                                                        @if(!empty($group->description))
                                                                            {{$group->description }}
                                                                        @else
                                                                            <span class="italic text-gray-400">No description provided yet.</span>
                                                                        @endif
                                                                    </strong>
                                                                </p>
                                                                <div class="contact-list-box-btns">
                                                                    <button type="button" class="button primary flex-1 block mr-2">
                                                                        <i class="uil-users-alt mr-1"></i> View Group</button>
                                                                    <button type="button"  href="#" class="button secondary button-icon mr-2">
                                                                        <i class="uil-list-ul"> </i> </button>
                                                                    <button type="button" a href="#" class="button secondary button-icon"> 
                                                                        <i class="uil-ellipsis-h"> </i> 
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <!-- end -->
                                                @endforeach
                                            </div>
                                        </li>
                                    </ul>

                            </div>      
                        <!-- ----contacts end -->
                        </div>
                </div>
        
            </div>
        </div>
        
    </div>    
 
    <!-- birthdays modal -->
<div id="birthdays" uk-modal>
    <div class="uk-modal-dialog uk-modal-body rounded-xl shadow-lg">
        <!-- close button -->
        <button class="uk-modal-close-default p-2.5 bg-gray-100 rounded-full m-3" type="button" uk-close></button>

        <div class="flex items-center space-x-3 mb-10">
            <ion-icon name="gift" class="text-yellow-500 text-xl bg-yellow-50 p-1 rounded-md"></ion-icon>
            <div class="text-xl font-semibold">Today's Birthdays</div>
        </div>

        <div class="space-y-6">
        @php $foundOtherBirthdays = false; @endphp

        @foreach($birthdayUsers as $user)
            @if($user->id != auth()->id())
                @php $foundOtherBirthdays = true; @endphp
                <div class="flex items-center sm:space-x-6 space-x-3">
                    <img src="{{ asset($user->avatar ? 'uploads/profile-pictures/' . $user->avatar : 'uploads/profile-pictures/blank.png') }}"
                        alt="" class="sm:w-16 sm:h-16 w-14 h-14 rounded-full">

                    <div class="flex-1">
                        <div class="flex items-center justify-between mb-3">
                            <div class="text-base font-semibold">
                                <a href="#"> {{ $user->first_name }} {{ $user->last_name }} </a>
                            </div>
                            <div class="font-medium text-sm text-gray-400">
                                {{ \Carbon\Carbon::parse($user->profile->dob)->age }} years old
                            </div>
                        </div>
                        <div class="relative">
                            <input type="text" class="with-border" placeholder="Write {{ $user->first_name }} on Timeline">
                            <ion-icon name="happy" class="absolute right-3 text-2xl top-1/4"></ion-icon>
                        </div>
                    </div>
                </div>
            @endif
        @endforeach

        @if(!$foundOtherBirthdays)
            <p class="text-gray-500 text-sm">No birthdays today.</p>
        @endif
    </div>

    </div>
</div>


    <!-- open chat box -->
    <div uk-toggle="target: #offcanvas-chat" class="start-chat">
        <svg class="h-7 w-7" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path>
        </svg>
    </div>
    
    <div id="offcanvas-chat" uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar bg-white p-0 w-full lg:w-80 shadow-2xl">


            <div class="relative pt-5 px-4">

                <h3 class="text-2xl font-bold mb-2"> Chats </h3>

                <div class="absolute right-3 top-4 flex items-center space-x-2">

                    <button class="uk-offcanvas-close  px-2 -mt-1 relative rounded-full inset-0 lg:hidden blcok"
                        type="button" uk-close></button>

                    <a href="#" uk-toggle="target: #search;animation: uk-animation-slide-top-small">
                        <ion-icon name="search" class="text-xl hover:bg-gray-100 p-1 rounded-full"></ion-icon>
                    </a>
                    <a href="#">
                        <ion-icon name="settings-outline" class="text-xl hover:bg-gray-100 p-1 rounded-full"></ion-icon>
                    </a>
                    <a href="#">
                        <ion-icon name="ellipsis-vertical" class="text-xl hover:bg-gray-100 p-1 rounded-full"></ion-icon>
                    </a>
                    <div class="bg-white w-56 shadow-md mx-auto p-2 mt-12 rounded-md text-gray-500 hidden border border-gray-100 dark:bg-gray-900 dark:text-gray-100 dark:border-gray-700"  
                    uk-drop="mode: click;pos: bottom-right;animation: uk-animation-slide-bottom-small; offset:5">
                        <ul class="space-y-1">
                          <li> 
                              <a href="#" class="flex items-center px-3 py-2 hover:bg-gray-100 hover:text-gray-800 rounded-md dark:hover:bg-gray-800">
                                 <ion-icon name="checkbox-outline" class="pr-2 text-xl"></ion-icon> Mark all as read
                              </a> 
                          </li>
                          <li> 
                              <a href="#" class="flex items-center px-3 py-2 hover:bg-gray-100 hover:text-gray-800 rounded-md dark:hover:bg-gray-800">
                                <ion-icon name="settings-outline" class="pr-2 text-xl"></ion-icon>  Chat setting 
                              </a> 
                          </li>
                          <li> 
                              <a href="#" class="flex items-center px-3 py-2 hover:bg-gray-100 hover:text-gray-800 rounded-md dark:hover:bg-gray-800">
                                <ion-icon name="notifications-off-outline" class="pr-2 text-lg"></ion-icon>   Disable notifications
                              </a> 
                          </li> 
                          <li> 
                              <a href="#" class="flex items-center px-3 py-2 hover:bg-gray-100 hover:text-gray-800 rounded-md dark:hover:bg-gray-800">
                                <ion-icon name="star-outline"  class="pr-2 text-xl"></ion-icon>  Create a group chat 
                              </a> 
                          </li>
                        </ul>
                    </div>
                              

                </div>


            </div>

            <div class="absolute bg-white z-10 w-full -mt-5 lg:-mt-2 transform translate-y-1.5 py-2 border-b items-center flex"
                id="search" hidden>
                <input type="text" placeholder="Search.." class="flex-1">
                <ion-icon name="close-outline" class="text-2xl hover:bg-gray-100 p-1 rounded-full mr-4 cursor-pointer"
                    uk-toggle="target: #search;animation: uk-animation-slide-top-small"></ion-icon> 
            </div>

            <nav class="responsive-nav border-b extanded mb-2 -mt-2">
                <ul uk-switcher="connect: #chats-tab; animation: uk-animation-fade">
                    <li class="uk-active"><a class="active" href="#0"> Friends </a></li>
                    <li><a href="#0">Groups <span> 10 </span> </a></li>
                </ul>
            </nav>

            <div class="contact-list px-2 uk-switcher" id="chats-tab">

                <div class="p-1">
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-7.jpg" alt="">
                        </div>
                        <div class="contact-username"> Alex Dolgove</div>
                    </a>
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-8.jpg" alt="">
                            <span class="user_status status_online"></span>
                        </div>
                        <div class="contact-username"> Dennis Han</div>
                    </a>
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-2.jpg" alt="">
                            <span class="user_status"></span>
                        </div>
                        <div class="contact-username"> Erica Jones</div>
                    </a>
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-3.jpg" alt="">
                        </div>
                        <div class="contact-username">Stella Johnson</div>
                    </a>
                    
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-5.jpg" alt="">
                        </div>
                        <div class="contact-username">Adrian Mohani </div>
                    </a>
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-6.jpg" alt="">
                        </div>
                        <div class="contact-username"> Jonathan Madano</div>
                    </a>
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-2.jpg" alt="">
                            <span class="user_status"></span>
                        </div>
                        <div class="contact-username"> Erica Jones</div>
                    </a>
                    <a href="chats-friend.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-1.jpg" alt="">
                            <span class="user_status status_online"></span>
                        </div>
                        <div class="contact-username"> Dennis Han</div>
                    </a>
                   

                </div>
               <div class="p-1">
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-7.jpg" alt="">
                        </div>
                        <div class="contact-username"> Alex Dolgove</div>
                    </a>
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-8.jpg" alt="">
                            <span class="user_status status_online"></span>
                        </div>
                        <div class="contact-username"> Dennis Han</div>
                    </a>
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-2.jpg" alt="">
                            <span class="user_status"></span>
                        </div>
                        <div class="contact-username"> Erica Jones</div>
                    </a>
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-3.jpg" alt="">
                        </div>
                        <div class="contact-username">Stella Johnson</div>
                    </a>
                    
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-5.jpg" alt="">
                        </div>
                        <div class="contact-username">Adrian Mohani </div>
                    </a>
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-6.jpg" alt="">
                        </div>
                        <div class="contact-username"> Jonathan Madano</div>
                    </a>
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-2.jpg" alt="">
                            <span class="user_status"></span>
                        </div>
                        <div class="contact-username"> Erica Jones</div>
                    </a>
                    <a href="chats-group.html">
                        <div class="contact-avatar">
                            <img src="assets/images/avatars/avatar-1.jpg" alt="">
                            <span class="user_status status_online"></span>
                        </div>
                        <div class="contact-username"> Dennis Han</div>
                    </a>
                   

                </div>

            </div>
        </div>
    </div>

    <!-- story-preview -->
    <div class="story-prev">
    
        <div class="story-sidebar uk-animation-slide-left-medium">
            <div class="md:flex justify-between items-center py-2 hidden">
                <h3 class="text-2xl font-semibold"> All Story </h3>
                <a href="#" class="text-blue-600"> Setting</a>
            </div>
    
            <div class="story-sidebar-scrollbar" data-simplebar>
                <h3 class="text-lg font-medium"> Your Story </h3>
    
                <a class="flex space-x-4 items-center hover:bg-gray-100 md:my-2 py-2 rounded-lg hover:text-gray-700" href="#">
                    <svg class="w-12 h-12 p-3 bg-gray-200 rounded-full text-blue-500 ml-1" fill="none" stroke="currentColor"
                        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                    </svg>
                    <div class="flex-1">
                        <div class="text-lg font-semibold"> Create a story </div>
                        <div class="text-sm -mt-0.5"> Share a photo or write something. </div>
                    </div>
                </a>
     
                <h3 class="text-lg font-medium lg:mt-3 mt-1"> Friends Story </h3>
    
                <div class="story-users-list"  uk-switcher="connect: #story_slider ; toggle: > * ; animation: uk-animation-slide-right-medium, uk-animation-slide-left-medium ">
    
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-1.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Dennis Han</div>
                            <p> <span class="story-count"> 2 new </span> <span class="story-time"> 4Mn ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-2.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Adrian Mohani</div>
                            <p> <span class="story-count"> 1 new </span> <span class="story-time"> 1hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-3.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username">Alex Dolgove </div>
                            <p> <span class="story-count"> 3 new </span> <span class="story-time"> 2hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-4.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Stella Johnson </div>
                            <p> <span class="story-count"> 2 new </span> <span class="story-time"> 3hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-5.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Adrian Mohani </div>
                            <p> <span class="story-count"> 1 new </span> <span class="story-time"> 4hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-8.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Dennis Han</div>
                            <p> <span class="story-count"> 2 new </span> <span class="story-time"> 8Hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-6.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Adrian Mohani</div>
                            <p> <span class="story-count"> 1 new </span> <span class="story-time"> 12hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-7.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username">Alex Dolgove </div>
                            <p> <span class="story-count"> 3 new </span> <span class="story-time"> 22hr ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-8.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Stella Johnson </div>
                            <p> <span class="story-count"> 2 new </span> <span class="story-time"> 3Dy ago</span> </p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="story-media">
                            <img src="assets/images/avatars/avatar-5.jpg" alt="">
                        </div>
                        <div class="story-text">
                            <div class="story-username"> Adrian Mohani </div>
                            <p> <span class="story-count"> 1 new </span> <span class="story-time"> 4Dy ago</span> </p>
                        </div>
                    </a>
                    
    
                </div>
    
    
            </div>
    
        </div>
        <div class="story-content">
    
            <ul class="uk-switcher uk-animation-scale-up" id="story_slider" >
                <li class="relative">

                    <span uk-switcher-item="previous" class="slider-icon is-left"> </span>
                    <span uk-switcher-item="next" class="slider-icon is-right"> </span>

                    <div uk-lightbox>
                        <a href="assets/images/avatars/avatar-lg-2.jpg" data-alt="Image">
                            <img src="assets/images/avatars/avatar-lg-2.jpg" class="story-slider-image"  data-alt="Image">
                        </a>
                    </div>

                </li>
                <li class="relative">

                    <span uk-switcher-item="previous" class="slider-icon is-left"> </span>
                    <span uk-switcher-item="next" class="slider-icon is-right"> </span>

                    <div uk-lightbox>
                        <a href="assets/images/avatars/avatar-lg-1.jpg" data-alt="Image">
                            <img src="assets/images/avatars/avatar-lg-1.jpg" class="story-slider-image"  data-alt="Image">
                        </a>
                    </div>

                </li>
                <li class="relative">

                    <span uk-switcher-item="previous" class="slider-icon is-left"> </span>
                    <span uk-switcher-item="next" class="slider-icon is-right"> </span>

                    <div uk-lightbox>
                        <a href="assets/images/avatars/avatar-lg-4.jpg" data-alt="Image">
                            <img src="assets/images/avatars/avatar-lg-4.jpg" class="story-slider-image"  data-alt="Image">
                        </a>
                    </div>

                </li>

                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
                <li class="relative">
                    <div class="bg-gray-200 story-slider-placeholder shadow-none animate-pulse"> </div>
                </li>
            </ul>
    
        </div>
    
        <!-- story colose button-->
        <span class="story-btn-close" uk-toggle="target: body ; cls: story-active"
            uk-tooltip="title:Close story ; pos: left">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
            </svg>
        </span>
    
    </div> 
    
    <!-- Create post modal -->
    <div id="create-post-modal" class="create-post is-story" uk-modal>
        <div
            class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical rounded-lg p-0 lg:w-5/12 relative shadow-2xl uk-animation-slide-bottom-small">
    
            <div class="text-center py-3 border-b">
                <h3 class="text-lg font-semibold"> Create Post </h3>
                <button class="uk-modal-close-default bg-gray-100 rounded-full p-2.5 right-2" type="button" uk-close uk-tooltip="title: Close ; pos: bottom ;offset:7"></button>
            </div>
            <div class="flex flex-1 items-start space-x-4 p-5">
                <img src="{{ asset('uploads/profile-pictures/' . (auth()->user()->avatar ?? 'blank.png')) }}" class="w-10 h-10 rounded-full">
                <div class="flex-1 pt-2">
                    <textarea class="uk-textare text-black shadow-none focus:shadow-none text-xl font-medium resize-none" rows="5"
                        placeholder="{{ 'Got something to share, ' . auth()->user()->first_name . '!' }}"></textarea>
                </div>
    
            </div>
            <div class="bsolute bottom-0 p-4 space-x-4 w-full">
                <div class="flex bg-gray-50 border border-purple-100 rounded-2xl p-2 shadow-sm items-center">
                    <div class="lg:block hidden ml-1"> Add to your post </div>
                    <div class="flex flex-1 items-center lg:justify-end justify-center space-x-2">
                    
                        <svg class="bg-blue-100 h-9 p-1.5 rounded-full text-blue-600 w-9 cursor-pointer" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
                        <svg class="text-red-600 h-9 p-1.5 rounded-full bg-red-100 w-9 cursor-pointer" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 4v16M17 4v16M3 8h4m10 0h4M3 12h18M3 16h4m10 0h4M4 20h16a1 1 0 001-1V5a1 1 0 00-1-1H4a1 1 0 00-1 1v14a1 1 0 001 1z"> </path></svg>
                        <svg class="text-green-600 h-9 p-1.5 rounded-full bg-green-100 w-9 cursor-pointer" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z"></path></svg>
                        <svg class="text-pink-600 h-9 p-1.5 rounded-full bg-pink-100 w-9 cursor-pointer" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"> </path></svg>
                        <svg class="text-pink-600 h-9 p-1.5 rounded-full bg-pink-100 w-9 cursor-pointer" id="veiw-more" hidden fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"> </path></svg>
                        <svg class="text-pink-600 h-9 p-1.5 rounded-full bg-pink-100 w-9 cursor-pointer" id="veiw-more" hidden fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"  d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z"></path></svg>
                        <svg class="text-purple-600 h-9 p-1.5 rounded-full bg-purple-100 w-9 cursor-pointer" id="veiw-more" hidden fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19V6l12-3v13M9 19c0 1.105-1.343 2-3 2s-3-.895-3-2 1.343-2 3-2 3 .895 3 2zm12-3c0 1.105-1.343 2-3 2s-3-.895-3-2 1.343-2 3-2 3 .895 3 2zM9 10l12-3"></path> </svg>
                       
                        <!-- view more -->
                        <svg class="hover:bg-gray-200 h-9 p-1.5 rounded-full w-9 cursor-pointer" id="veiw-more" uk-toggle="target: #veiw-more; animation: uk-animation-fade" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"> </path></svg>
                    
                    </div>
                </div>
            </div>
            <div class="flex items-center w-full justify-between border-t p-3">
    
                <select class="selectpicker mt-2 story">
                    <option>Only me</option>
                    <option>Every one</option>
                    <option>People I Follow </option>
                    <optionion>People Follow Me</optionion>
                </select>
    
                <div class="flex space-x-2">
                    <a href="#" class="bg-red-100 flex font-medium h-9 items-center justify-center px-5 rounded-md text-red-600 text-sm">
                        <svg class="h-5 pr-1 rounded-full text-red-500 w-6 fill-current" id="veiw-more" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="false" style=""> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z"></path></svg>
                        Live </a>
                    <a href="#" class="bg-blue-600 flex h-9 items-center justify-center rounded-md text-white px-5 font-medium">
                      Share </a>    
                </div>

                <a href="#" hidden
                    class="bg-blue-600 flex h-9 items-center justify-center rounded-lg text-white px-12 font-semibold">
                    Share </a>
            </div>
        </div>
    </div>

    <!-- Member Modal -->
    <div id="memberModal" class="uk-modal" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical rounded-lg p-0 lg:w-5/12 relative shadow-2xl uk-animation-slide-bottom-small" style="max-width: 400px; background-color: #fffaf0;">
       
            <button class="uk-modal-close-default" type="button" uk-close></button>

            <div class="uk-text-center uk-margin">
                <img id="memberAvatar" src="" alt="" class="uk-border-circle" width="80" height="80">
                <h4 id="memberName" class="uk-margin-small-top uk-margin-remove-bottom"></h4>
                <p id="memberStatus" class="uk-text-meta uk-margin-remove-top"></p>
            </div>

            <div class="uk-flex uk-flex-center uk-margin-top uk-grid-small" uk-grid>
                <div>
                    <a href="#" hidden
                    class="bg-black-600 flex h-9 items-center justify-center rounded-lg text-white px-12 font-semibold">
                   View Profile </a>
                </div>
                <div>
                    <a href="#" hidden
                    class="bg-blue-600 flex h-9 items-center justify-center rounded-lg text-white px-12 font-semibold">
                    Message </a>
                </div>
                <div>
                    <a href="#" hidden
                    class="bg-green-600 flex h-9 items-center justify-center rounded-lg text-white px-12 font-semibold">
                    Chat </a>
                </div>
            </div>
        </div>
    </div>


    <!-- Group Modal -->
    <div id="groupModal" class="uk-modal" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-border-rounded uk-box-shadow-large" style="max-width: 400px; background-color: #fffaf0;">
            <button class="uk-modal-close-default" type="button" uk-close></button>

            <div class="uk-text-center uk-margin">
                <h4 id="groupName" class="uk-margin-remove-bottom"></h4>
                <p id="groupDescription" class="uk-text-meta uk-margin-small-top"></p>
            </div>

            <div class="uk-flex uk-flex-center uk-margin-top">
                <a href="#" id="viewGroupBtn" class="uk-button uk-button-primary">View Group</a>
            </div>
        </div>
    </div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function openMemberModal(el) {
        document.getElementById('memberAvatar').src = el.dataset.avatar;
        document.getElementById('memberName').textContent = el.dataset.name;
        document.getElementById('memberStatus').textContent = el.dataset.status;
        document.getElementById('messageBtn').href = el.dataset.messageUrl;
        document.getElementById('chatBtn').href = el.dataset.chatUrl;

        UIkit.modal('#memberModal').show();
    }

    function openGroupModal(el) {
        document.getElementById('groupName').textContent = el.dataset.name;
        document.getElementById('groupDescription').textContent = el.dataset.description;
        document.getElementById('viewGroupBtn').href = el.dataset.viewUrl;

        UIkit.modal('#groupModal').show();
    }
</script>
 
    <!-- For Night mode -->
    <script>
        (function (window, document, undefined) {
            'use strict';
            if (!('localStorage' in window)) return;
            var nightMode = localStorage.getItem('gmtNightMode');
            if (nightMode) {
                document.documentElement.className += ' night-mode';
            }
        })(window, document);
    
        (function (window, document, undefined) {
    
            'use strict';
    
            // Feature test
            if (!('localStorage' in window)) return;
    
            // Get our newly insert toggle
            var nightMode = document.querySelector('#night-mode');
            if (!nightMode) return;
    
            // When clicked, toggle night mode on or off
            nightMode.addEventListener('click', function (event) {
                event.preventDefault();
                document.documentElement.classList.toggle('dark');
                if (document.documentElement.classList.contains('dark')) {
                    localStorage.setItem('gmtNightMode', true);
                    return;
                }
                localStorage.removeItem('gmtNightMode');
            }, false);
    
        })(window, document);
    </script>  
    <script>
    document.getElementById('seeMoreBtn')?.addEventListener('click', function () {
        document.querySelectorAll('.extra-contact').forEach(el => el.classList.remove('hidden'));
        this.remove(); // hide the button after expanding
    });
</script>
<script>
$(document).ready(function() {
    // Like Post
    $('.like-btn').click(function() {
        let postId = $(this).data('post-id');
        let likeBtn = $(this);

        console.log('Sending like request for post ID:', postId);

        $.post("{{ route('post.like') }}", {
            post_id: postId,
            _token: "{{ csrf_token() }}"
        })
        .done(function(response) {
            console.log('Like response:', response);

            let countSpan = likeBtn.find('.like-count');
            let currentCount = parseInt(countSpan.text());

            if (response.status === 'liked') {
                countSpan.text(currentCount + 1);
            } else if (response.status === 'unliked') {
                countSpan.text(currentCount - 1);
            }
        })
        .fail(function(jqXHR, textStatus, errorThrown) {
            console.error('Error liking post:', {
                postId: postId,
                status: textStatus,
                error: errorThrown,
                response: jqXHR.responseText
            });
        });
    });

    // Comment Post
    $('.comment-input').keypress(function(e) {
        if (e.which == 13) {
            let input = $(this);
            let comment = input.val();
            let postId = input.data('post-id');

            if (comment.trim() == '') return;

            console.log('Sending comment:', { postId, comment });

            $.post("{{ route('post.comment') }}", {
                post_id: postId,
                comment: comment,
                _token: "{{ csrf_token() }}"
            })
            .done(function(response) {
                console.log('Comment response:', response);

                if (response.status === 'success') {
                    $('.comment-section-' + postId).append(
                        `<p><strong>${response.user}:</strong> ${response.comment}</p>`
                    );
                    input.val('');
                }
            })
            .fail(function(jqXHR, textStatus, errorThrown) {
                console.error('Error posting comment:', {
                    postId: postId,
                    comment: comment,
                    status: textStatus,
                    error: errorThrown,
                    response: jqXHR.responseText
                });
            });
        }
    });
});
</script>

     <!-- Javascript
    ================================================== -->
     <script src="../../code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="{{asset('dashboard/assets/js/tippy.all.min.js')}}"></script>
    <script src="{{asset('dashboard/assets/js/uikit.js')}}"></script>
    <script src="{{asset('dashboard/assets/js/simplebar.js')}}"></script>
    <script src="{{asset('dashboard/assets/js/custom.js')}}"></script>
    <script src="{{asset('dashboard/assets/js/bootstrap-select.min.js')}}"></script>
    <script src="../../unpkg.com/ionicons%405.2.3/dist/ionicons.js"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/uikit@3.19.3/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.19.3/dist/js/uikit-icons.min.js"></script> -->

</body>

<!-- Mirrored from demo.foxthemes.net/socialite/feed.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 20 Jul 2023 17:41:40 GMT -->
</html>