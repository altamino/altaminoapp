package com.narvii.community;

import com.narvii.model.api.ApiResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class ProbationLogResponse extends ApiResponse {
    public int communityProbationLogCount;
    public List<CommunityProbationLogListBean> communityProbationLogList;

    public static class CommunityProbationLogListBean {
        public AuthorBean author;
        public String createdTime;
        public Object mediaList;
        public String message;

        public static class AuthorBean {
            public Object icon;
            public String nickname;
            public int role;
            public int status;
            public String uid;
        }
    }
}
