package com.narvii.poll;

import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.PollOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class PollService {
    ApiService api;
    NVContext context;
    NotificationCenter notificationCenter;
    final HashMap<String, Task> runnings = new HashMap<>();
    public final EventDispatcher<VoteListener> listeners = new EventDispatcher<>();
    final ApiResponseListener<ApiResponse> voteListener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.poll.PollService.1
        Task removeRunning(ApiRequest apiRequest) {
            Iterator<Map.Entry<String, Task>> it = PollService.this.runnings.entrySet().iterator();
            while (it.hasNext()) {
                Task value = it.next().getValue();
                if (value.request == apiRequest) {
                    it.remove();
                    return value;
                }
            }
            return null;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            final Task taskRemoveRunning = removeRunning(apiRequest);
            if (taskRemoveRunning != null) {
                final Blog blog = (Blog) taskRemoveRunning.blog.m46clone();
                List<PollOption> list = blog.polloptList;
                if (list != null) {
                    for (PollOption pollOption : list) {
                        if (taskRemoveRunning.optId.equals(pollOption.polloptId)) {
                            if (pollOption.votedValue <= 0) {
                                pollOption.votesCount++;
                                pollOption.votesSum++;
                                pollOption.votedValue = 1;
                            }
                        } else {
                            int i = pollOption.votedValue;
                            if (i > 0) {
                                pollOption.votesCount--;
                                pollOption.votesSum -= i;
                                pollOption.votedValue = 0;
                            }
                        }
                    }
                }
                PollService.this.listeners.safeDispatch(new Callback<VoteListener>() { // from class: com.narvii.poll.PollService.1.1
                    @Override // com.narvii.util.Callback
                    public void call(VoteListener voteListener) {
                        voteListener.onVoteFinish(blog, taskRemoveRunning.optId);
                    }
                });
                NotificationUtils.sendNotificationIncludeGlobal(PollService.this.notificationCenter, new Notification("update", blog));
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, final String str, ApiResponse apiResponse, Throwable th) {
            final Task taskRemoveRunning = removeRunning(apiRequest);
            if (taskRemoveRunning != null) {
                PollService.this.listeners.safeDispatch(new Callback<VoteListener>() { // from class: com.narvii.poll.PollService.1.2
                    @Override // com.narvii.util.Callback
                    public void call(VoteListener voteListener) {
                        Task task = taskRemoveRunning;
                        voteListener.onVoteFail(task.blog, task.optId, str);
                    }
                });
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface VoteListener {
        void onVoteFail(Blog blog, String str, String str2);

        void onVoteFinish(Blog blog, String str);
    }

    public PollService(NVContext nVContext) {
        this.context = nVContext;
        this.api = (ApiService) nVContext.getService("api");
        this.notificationCenter = (NotificationCenter) nVContext.getService("notification");
    }

    /* loaded from: classes3.dex */
    static class Task {
        Blog blog;
        String optId;
        ApiRequest request;

        Task() {
        }
    }

    public boolean isVoting(String str) {
        return getVotingOption(str) != null;
    }

    public String getVotingOption(String str) {
        Task task = this.runnings.get(str);
        if (task == null) {
            return null;
        }
        return task.optId;
    }

    public void vote(Blog blog, String str, LoggingSource loggingSource, LoggingOrigin loggingOrigin) {
        if (isVoting(blog.blogId)) {
            return;
        }
        Task task = new Task();
        task.blog = blog;
        task.optId = str;
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        StringBuilder sb = new StringBuilder();
        sb.append("/blog/");
        sb.append(blog.blogId);
        sb.append("/poll/option/");
        sb.append(str);
        sb.append(Utils.isGlobalInteractionScope(this.context) ? "/g-vote" : "/vote");
        ApiRequest.Builder builderTag = builderPost.path(sb.toString()).param("value", 1).tag(ApiService.ASYNC_CALL_TAG);
        builderTag.communityId(blog.ndcId);
        if (loggingSource != null) {
            builderTag.param("eventSource", loggingSource.name());
        }
        if (loggingOrigin != null) {
            builderTag.param("eventOrigin", loggingOrigin.name());
        }
        LiveLayerUtils.reportPolling(this.context, blog);
        task.request = builderTag.build();
        this.api.exec(task.request, this.voteListener);
        this.runnings.put(blog.blogId, task);
    }
}
