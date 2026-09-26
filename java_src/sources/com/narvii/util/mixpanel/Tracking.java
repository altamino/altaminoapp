package com.narvii.util.mixpanel;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class Tracking {

    @NotNull
    public static final Tracking INSTANCE = new Tracking();

    public static final class CONSTANTS {

        @NotNull
        public static final CONSTANTS INSTANCE = new CONSTANTS();

        @NotNull
        public static final String OLD = "old";

        private CONSTANTS() {
        }
    }

    public static final class Events {

        @NotNull
        public static final Events INSTANCE = new Events();

        @NotNull
        public static final String LOGIN_FAILURE = "login_failure";

        @NotNull
        public static final String LOGIN_SUCCESS = "login_success";

        @NotNull
        public static final String MEDIA_LAB_UID_READY = "medialab_uid_ready";

        @NotNull
        public static final String PAGE_VIEW = "page_view";

        @NotNull
        public static final String REGISTER_FAILURE = "register_failure";

        @NotNull
        public static final String REGISTER_SUCCESS = "register_success";

        private Events() {
        }
    }

    public static final class Properties {

        @NotNull
        public static final String ASSEMBLY_UID = "assembly_uid";

        @NotNull
        public static final String COUNT_AS_PAGE_LOAD = "counts_as_page_load";

        @NotNull
        public static final String ERROR_HTTP_CODE = "http_response_code";

        @NotNull
        public static final String ERROR_TYPE = "error_type";

        @NotNull
        public static final String EXTRA = "extra";

        @NotNull
        public static final String ID = "id";

        @NotNull
        public static final Properties INSTANCE = new Properties();

        @NotNull
        public static final String NAME = "name";

        @NotNull
        public static final String SERVICE = "service";

        @NotNull
        public static final String TITLE = "title";

        @NotNull
        public static final String USERNAME = "username";

        private Properties() {
        }
    }

    private Tracking() {
    }
}
