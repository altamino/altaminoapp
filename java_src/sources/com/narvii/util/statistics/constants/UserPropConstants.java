package com.narvii.util.statistics.constants;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class UserPropConstants {

    @NotNull
    public static final UserPropConstants INSTANCE = new UserPropConstants();

    public static final class PostEvents {

        @NotNull
        public static final PostEvents INSTANCE = new PostEvents();

        @NotNull
        public static final String LIKES_TOTAL = "Likes Total";

        @NotNull
        public static final String STICKER_COMMENTS_TOTAL = "Sticker Comments Total";

        private PostEvents() {
        }
    }

    private UserPropConstants() {
    }
}
