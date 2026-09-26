package com.narvii.util.statistics.constants;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class EventConstants {

    @NotNull
    public static final EventConstants INSTANCE = new EventConstants();

    public static final class AppCheck {

        @NotNull
        public static final String FAILED = "app_check_failed";

        @NotNull
        public static final AppCheck INSTANCE = new AppCheck();

        @NotNull
        public static final String SUCCESS = "app_check_passed_successfully";

        private AppCheck() {
        }
    }

    public static final class CommentPost {

        @NotNull
        public static final String COMMENTS_WRITTEN_TOTAL = "Comments Written Total";

        @NotNull
        public static final String COMMENT_POST = "Comment Post";

        @NotNull
        public static final String CONTENT_TYPE = "Content Type";

        @NotNull
        public static final String CREATE_COMMENT = "create_comment";

        @NotNull
        public static final CommentPost INSTANCE = new CommentPost();

        @NotNull
        public static final String NEW = "New";

        @NotNull
        public static final String REPLAY = "Replay";

        @NotNull
        public static final String RESPOND_TO = "respondTo";

        @NotNull
        public static final String STAT_PARENT_TYPE = "stat_parent_type";

        @NotNull
        public static final String TYPE = "Type";

        @NotNull
        public static final String TYPES = "Types";

        @NotNull
        public static final String USER_COMMENTS = "User Comments";

        private CommentPost() {
        }
    }

    public static final class CreatePost {

        @NotNull
        public static final String ADD_CATEGORY = "Add Category";

        @NotNull
        public static final String ADD_GALLERY_PHOTOS = "Add gallery photos";

        @NotNull
        public static final String ADD_KEYWORDS = "Add keywords";

        @NotNull
        public static final String ADD_PHOTO = "Add photo";

        @NotNull
        public static final String ADD_PROFILE_PHOTO = "Add profile photo";

        @NotNull
        public static final String BACKGROUND_COLOR = "Background Color";

        @NotNull
        public static final String BACKGROUND_IMAGE = "Background Image";

        @NotNull
        public static final String CREATE_POST = "Create Post";

        @NotNull
        public static final String FILL_IN_ABOUT = "Fill in about";

        @NotNull
        public static final String GATED = "Gated";

        @NotNull
        public static final String HAS_VIDEO = "Has Video";

        @NotNull
        public static final CreatePost INSTANCE = new CreatePost();

        @NotNull
        public static final String LINK_RELATED_FAVORITES = "Link Related favorites";

        @NotNull
        public static final String REMOVE_LOCATION = "Remove location";

        @NotNull
        public static final String TOTAL_EDITED_POSTS = "Total Edited Posts";

        @NotNull
        public static final String TOTAL_NEW_POSTS = "Total New Posts";

        @NotNull
        public static final String USER_EDITS_A_POST = "User Edits a Post";

        private CreatePost() {
        }
    }

    public static final class GlobalNavigation {

        @NotNull
        public static final String CHAT_HUB = "chat-hub";

        @NotNull
        public static final String DISCOVER = "discover";

        @NotNull
        public static final String GLOBAL_NAV_BUTTON = "global_nav_button";

        @NotNull
        public static final String GLOBAL_PROFILE = "global-profile";

        @NotNull
        public static final GlobalNavigation INSTANCE = new GlobalNavigation();

        @NotNull
        public static final String LIVE_VIEW = "live";

        @NotNull
        public static final String MY_COMMUNITIES = "my-communities";

        @NotNull
        public static final String NAV_CLICK_GLOBAL = "Nav Click Global";

        @NotNull
        public static final String NOTIFICATIONS = "notifications";

        @NotNull
        public static final String STORE = "store";

        @NotNull
        public static final String WALLET = "wallet";

        private GlobalNavigation() {
        }
    }

    public static final class LikePost {

        @NotNull
        public static final String COMMUNITY_ONBOARDING = "Community Onboarding";

        @NotNull
        public static final String COMMUNITY_ONBOARDING_LIKES = "Community Onboarding Likes";

        @NotNull
        public static final LikePost INSTANCE = new LikePost();

        @NotNull
        public static final String LIKE_POST = "Like Post";

        @NotNull
        public static final String PAGE_DETAILED_VIEW = "Page Detailed View";

        @NotNull
        public static final String SBB = "SBB";

        private LikePost() {
        }
    }

    public static final class PostType {

        @NotNull
        public static final String BLOG = "blog";

        @NotNull
        public static final String GO_LIVE_CHAT = "live";

        @NotNull
        public static final PostType INSTANCE = new PostType();

        @NotNull
        public static final String POLL_PLAIN = "poll_plain";

        @NotNull
        public static final String POLL_WIKI = "poll_wiki";

        @NotNull
        public static final String POST_TYPE = "post_type";

        @NotNull
        public static final String PUBLIC_CHATROOM = "public-chatroom";

        @NotNull
        public static final String QUESTION = "question";

        @NotNull
        public static final String QUIZ = "quiz";

        @NotNull
        public static final String REPOST = "repost";

        @NotNull
        public static final String STORY = "story";

        @NotNull
        public static final String WIKI = "wiki";

        private PostType() {
        }
    }

    private EventConstants() {
    }
}
