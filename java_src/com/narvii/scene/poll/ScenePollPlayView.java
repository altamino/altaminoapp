package com.narvii.scene.poll;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.mediaeditor.R;
import com.narvii.model.Blog;
import com.narvii.model.PollAttach;
import com.narvii.model.PollOption;
import com.narvii.model.Scene;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.poll.VoteBar;
import com.narvii.scene.ScenePlayBaseView;
import com.narvii.scene.ScenePlayListener;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.scene.ScenePlayView;
import com.narvii.story.StoryNotificationStub;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.LongPushButton;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: ScenePollPlayView.kt */
/* loaded from: classes3.dex */
public final class ScenePollPlayView extends ScenePlayBaseView implements Callback<LongPushButton>, ScenePlayView {
    public static final String AREA_POLL = "Poll";
    public static final long COUNT_DOWN_INTERVAL_MS = 1000;
    public static final Companion Companion = new Companion(null);
    public static final long POLL_COUNT_DOWN_MS = 15000;
    public static final long POLL_RESULT_COUNT_DOWN_MS = 3000;
    private HashMap _$_findViewCache;
    private final TextView changeVoteTV;
    private final Runnable countDownRunnable;
    private long countDownTime;
    private PollAttach currentPoll;
    private boolean hasShowResultOnce;
    private boolean isFirstTimePlay;
    private boolean isGlobalVote;
    private boolean isOptionPressing;
    private boolean isPlayed;
    private boolean isRequesting;
    private final ViewGroup optionContainer;
    private final List<View> optionViewList;
    private PollAttach originalPoll;
    private String sceneId;
    private final TextView skipHintTV;
    private final TextView titleTV;
    private final TextView voteCountTV;
    private String votedOptionId;
    private String votedOptionIdBackup;

    /* compiled from: ScenePollPlayView.kt */
    /* renamed from: com.narvii.scene.poll.ScenePollPlayView$2, reason: invalid class name */
    static final class AnonymousClass2 implements View.OnClickListener {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public ScenePollPlayView(Context context) {
        super(context);
        this.isFirstTimePlay = true;
        LayoutInflater.from(getContext()).inflate(R.layout.fragment_scene_poll_play, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.title)");
        this.titleTV = (TextView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.vote_count);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.vote_count)");
        this.voteCountTV = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.skip_hint);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.skip_hint)");
        this.skipHintTV = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.options_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.options_container)");
        this.optionContainer = (ViewGroup) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.change_vote);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.change_vote)");
        this.changeVoteTV = (TextView) viewFindViewById5;
        this.optionViewList = new ArrayList();
        this.countDownRunnable = new Runnable() { // from class: com.narvii.scene.poll.ScenePollPlayView.1
            @Override // java.lang.Runnable
            public void run() {
                ScenePollPlayView.this.countDownTime -= 1000;
                if (ScenePollPlayView.this.countDownTime <= 0) {
                    ScenePollPlayView.this.countDownTime = 0L;
                    if (ScenePollPlayView.this.isOptionPressing) {
                        return;
                    }
                    ScenePollPlayView.this.onTimeOut();
                    return;
                }
                ScenePollPlayView scenePollPlayView = ScenePollPlayView.this;
                scenePollPlayView.onCountDownUpdate(scenePollPlayView.countDownTime);
                ScenePollPlayView.this.postDelayed(this, 1000L);
            }
        };
        findViewById(R.id.background).setOnClickListener(AnonymousClass2.INSTANCE);
        this.skipHintTV.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.poll.ScenePollPlayView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ScenePollPlayView scenePollPlayView = ScenePollPlayView.this;
                scenePollPlayView.removeCallbacks(scenePollPlayView.countDownRunnable);
                ScenePollPlayView.this.skipToNextScene();
            }
        });
        this.isGlobalVote = Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()));
    }

    public ScenePollPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isFirstTimePlay = true;
        LayoutInflater.from(getContext()).inflate(R.layout.fragment_scene_poll_play, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.title)");
        this.titleTV = (TextView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.vote_count);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.vote_count)");
        this.voteCountTV = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.skip_hint);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.skip_hint)");
        this.skipHintTV = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.options_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.options_container)");
        this.optionContainer = (ViewGroup) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.change_vote);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.change_vote)");
        this.changeVoteTV = (TextView) viewFindViewById5;
        this.optionViewList = new ArrayList();
        this.countDownRunnable = new Runnable() { // from class: com.narvii.scene.poll.ScenePollPlayView.1
            @Override // java.lang.Runnable
            public void run() {
                ScenePollPlayView.this.countDownTime -= 1000;
                if (ScenePollPlayView.this.countDownTime <= 0) {
                    ScenePollPlayView.this.countDownTime = 0L;
                    if (ScenePollPlayView.this.isOptionPressing) {
                        return;
                    }
                    ScenePollPlayView.this.onTimeOut();
                    return;
                }
                ScenePollPlayView scenePollPlayView = ScenePollPlayView.this;
                scenePollPlayView.onCountDownUpdate(scenePollPlayView.countDownTime);
                ScenePollPlayView.this.postDelayed(this, 1000L);
            }
        };
        findViewById(R.id.background).setOnClickListener(AnonymousClass2.INSTANCE);
        this.skipHintTV.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.poll.ScenePollPlayView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ScenePollPlayView scenePollPlayView = ScenePollPlayView.this;
                scenePollPlayView.removeCallbacks(scenePollPlayView.countDownRunnable);
                ScenePollPlayView.this.skipToNextScene();
            }
        });
        this.isGlobalVote = Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()));
    }

    /* compiled from: ScenePollPlayView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    public final void playPoll(String str, PollAttach pollAttach, ScenePlayRecord scenePlayRecord) {
        PollOption pollOption;
        List<PollOption> list;
        PollOption next;
        PollOption pollOption2;
        List<PollOption> list2;
        PollOption next2;
        this.sceneId = str;
        this.originalPoll = pollAttach;
        this.currentPoll = (PollAttach) JacksonUtils.readAs(JacksonUtils.writeAsString(pollAttach), PollAttach.class);
        String str2 = null;
        if (this.isGlobalVote) {
            PollAttach pollAttach2 = this.currentPoll;
            if (pollAttach2 == null || (list2 = pollAttach2.polloptList) == null) {
                pollOption2 = null;
            } else {
                Iterator it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next2 = 0;
                        break;
                    } else {
                        next2 = it.next();
                        if (((PollOption) next2).globalVotedValue > 0) {
                            break;
                        }
                    }
                }
                pollOption2 = next2;
            }
            if (pollOption2 != null) {
                pollOption2.globalVotesCount = Math.max(pollOption2.globalVotesCount - 1, 0);
                pollOption2.globalVotedValue = 0;
            }
            if (pollOption2 != null) {
                str2 = pollOption2.polloptId;
            }
        } else {
            PollAttach pollAttach3 = this.currentPoll;
            if (pollAttach3 == null || (list = pollAttach3.polloptList) == null) {
                pollOption = null;
            } else {
                Iterator it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = 0;
                        break;
                    } else {
                        next = it2.next();
                        if (((PollOption) next).votedValue > 0) {
                            break;
                        }
                    }
                }
                pollOption = next;
            }
            if (pollOption != null) {
                pollOption.votesCount = Math.max(pollOption.votesCount - 1, 0);
                pollOption.votedValue = 0;
            }
            if (pollOption != null) {
                str2 = pollOption.polloptId;
            }
        }
        this.votedOptionId = str2;
        logStart();
        this.optionContainer.removeAllViews();
        this.optionViewList.clear();
        updateOptions(false);
        if (isVoted()) {
            this.isPlayed = false;
            this.isFirstTimePlay = false;
            startCountDown(POLL_RESULT_COUNT_DOWN_MS);
        } else {
            this.isPlayed = true;
            this.isFirstTimePlay = true;
            startCountDown(POLL_COUNT_DOWN_MS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCountDownUpdate(long j) {
        this.skipHintTV.setText(getResources().getString(R.string.skip_n_second, Integer.valueOf((int) (j / 1000))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTimeOut() {
        skipToNextScene();
    }

    @Override // com.narvii.util.Callback
    public void call(LongPushButton longPushButton) {
        String str = (String) (longPushButton != null ? longPushButton.getTag(R.id.polloptId) : null);
        if (str != null) {
            this.votedOptionId = str;
            this.votedOptionIdBackup = null;
            if (this.isPreview) {
                this.isPlayed = true;
                updateOptions(true);
                startCountDown(POLL_RESULT_COUNT_DOWN_MS);
                PollAttach pollAttach = this.originalPoll;
                if (pollAttach != null) {
                    pollAttach.polloptList = getPolloptListFixed();
                }
                ScenePlayRecord scenePlayRecord = new ScenePlayRecord(2);
                scenePlayRecord.result = new ScenePollResult(this.votedOptionId);
                ScenePlayListener scenePlayListener = this.scenePlayListener;
                if (scenePlayListener != null) {
                    scenePlayListener.onScenePlayRecordGenerated(this.sceneId, scenePlayRecord);
                    return;
                }
                return;
            }
            if (Utils.shouldShowLoginPage(Utils.getNVContext(getContext()))) {
                this.votedOptionId = null;
                return;
            }
            this.isRequesting = true;
            updateCountDownState(false);
            updateOptions(true);
            NVContext nVContext = Utils.getNVContext(getContext());
            if (nVContext != null) {
                Object service = nVContext.getService("api");
                Intrinsics.checkExpressionValueIsNotNull(service, "c.getService(\"api\")");
                ApiService apiService = (ApiService) service;
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put("value", 1);
                ApiRequest.Builder builderBody = ApiRequest.builder().post().path("/scene/" + this.sceneId + "/poll/option/" + this.votedOptionId + "/vote").body(objectNodeCreateObjectNode);
                Blog blog = this.story;
                if (blog != null) {
                    builderBody.communityId(blog.ndcId);
                }
                apiService.exec(builderBody.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.scene.poll.ScenePollPlayView.call.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                        LogEvent.Builder builderExtraParam = ScenePollPlayView.this.getLogEventBuilder().actSemantic(ActSemantic.vote).area(ScenePollPlayView.AREA_POLL).extraParam("pollShowId", ((ScenePlayBaseView) ScenePollPlayView.this).showId);
                        PollAttach pollAttach2 = ScenePollPlayView.this.currentPoll;
                        Object obj = null;
                        builderExtraParam.extraParam("pollId", pollAttach2 != null ? pollAttach2.attachId : null).extraParam("optionId", ScenePollPlayView.this.votedOptionId).send();
                        ScenePollPlayView.this.isRequesting = false;
                        ScenePollPlayView.this.isPlayed = true;
                        ScenePollPlayView.this.updateOptions(true);
                        ScenePollPlayView.this.startCountDown(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
                        ScenePollPlayView scenePollPlayView = ScenePollPlayView.this;
                        scenePollPlayView.updateCountDownState(((ScenePlayBaseView) scenePollPlayView).isActive);
                        PollAttach pollAttach3 = ScenePollPlayView.this.originalPoll;
                        if (pollAttach3 != null) {
                            pollAttach3.polloptList = ScenePollPlayView.this.getPolloptListFixed();
                        }
                        ScenePlayRecord scenePlayRecord2 = new ScenePlayRecord(2);
                        scenePlayRecord2.result = new ScenePollResult(ScenePollPlayView.this.votedOptionId);
                        ScenePlayListener scenePlayListener2 = ((ScenePlayBaseView) ScenePollPlayView.this).scenePlayListener;
                        if (scenePlayListener2 != null) {
                            scenePlayListener2.onScenePlayRecordGenerated(ScenePollPlayView.this.sceneId, scenePlayRecord2);
                        }
                        if (((ScenePlayBaseView) ScenePollPlayView.this).story != null) {
                            List<Scene> list = ((ScenePlayBaseView) ScenePollPlayView.this).story.sceneList;
                            Intrinsics.checkExpressionValueIsNotNull(list, "story.sceneList");
                            Iterator<T> it = list.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                Object next = it.next();
                                if (TextUtils.equals(((Scene) next).sceneId, ScenePollPlayView.this.sceneId)) {
                                    obj = next;
                                    break;
                                }
                            }
                            Scene scene = (Scene) obj;
                            if (scene != null) {
                                scene.pollAttach = ScenePollPlayView.this.originalPoll;
                            }
                            Notification notification = new Notification();
                            notification.obj = ((ScenePlayBaseView) ScenePollPlayView.this).story;
                            notification.action = "update";
                            NotificationUtils.sendNotification(Utils.getNVContext(ScenePollPlayView.this.getContext()), notification, true);
                        }
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                        ScenePollPlayView.this.isRequesting = false;
                        ScenePollPlayView.this.votedOptionId = null;
                        Iterator it = ScenePollPlayView.this.optionViewList.iterator();
                        while (it.hasNext()) {
                            ((LongPushButton) ((View) it.next()).findViewById(R.id.push_btn)).reset();
                        }
                        ScenePollPlayView.this.updateOptions(false);
                        NVToast.makeText(ScenePollPlayView.this.getContext(), str2, 0).show();
                        if (ScenePollPlayView.this.countDownTime <= 0) {
                            ScenePollPlayView.this.onTimeOut();
                        } else {
                            ScenePollPlayView scenePollPlayView = ScenePollPlayView.this;
                            scenePollPlayView.updateCountDownState(((ScenePlayBaseView) scenePollPlayView).isActive);
                        }
                    }
                });
            }
        }
    }

    private final void updateOption(View view, PollOption pollOption, boolean z, boolean z2, boolean z3, int i) {
        boolean zEquals = TextUtils.equals(pollOption.polloptId, this.votedOptionId);
        boolean z4 = zEquals && this.isRequesting;
        ThumbImageView optionIV = (ThumbImageView) view.findViewById(R.id.option_iv);
        if (z) {
            Intrinsics.checkExpressionValueIsNotNull(optionIV, "optionIV");
            optionIV.setVisibility(8);
        } else {
            Intrinsics.checkExpressionValueIsNotNull(optionIV, "optionIV");
            optionIV.setVisibility(0);
            optionIV.setImageMedia(pollOption.firstMedia());
        }
        LongPushButton pushButton = (LongPushButton) view.findViewById(R.id.push_btn);
        pushButton.setTag(R.id.polloptId, pollOption.polloptId);
        pushButton.longPressCallback = this;
        pushButton.setAllowLongPushListener(new LongPushButton.AllowLongPushListener() { // from class: com.narvii.scene.poll.ScenePollPlayView.updateOption.1
            @Override // com.narvii.widget.LongPushButton.AllowLongPushListener
            public final boolean allowLongPush() {
                return !ScenePollPlayView.this.isRequesting;
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(pushButton, "pushButton");
        setVisibility(pushButton, z2 ? 4 : 0, z3);
        pushButton.setDispatchSetPressedListener(new LongPushButton.DispatchSetPressedListener() { // from class: com.narvii.scene.poll.ScenePollPlayView.updateOption.2
            @Override // com.narvii.widget.LongPushButton.DispatchSetPressedListener
            public final void onPress(boolean z5) {
                ScenePollPlayView.this.isOptionPressing = z5;
                if (z5 || ScenePollPlayView.this.isRequesting || ScenePollPlayView.this.countDownTime > 0) {
                    return;
                }
                ScenePollPlayView.this.onTimeOut();
            }
        });
        if (!z3 || z4) {
            pushButton.lock(z4);
        }
        View viewFindViewById = view.findViewById(R.id.progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "optionView.findViewById<View>(R.id.progress)");
        setVisibility(viewFindViewById, z4 ? 0 : 4, z3);
        VoteBar bar = (VoteBar) view.findViewById(R.id.vote_bar);
        Intrinsics.checkExpressionValueIsNotNull(bar, "bar");
        setVisibility(bar, z2 ? 0 : 4, z3);
        bar.setValue(zEquals, i == 0 ? 0.0f : (((this.isGlobalVote ? pollOption.globalVotesCount : pollOption.votesCount) + (zEquals ? 1 : 0)) * 1.0f) / i, z3 ? 500L : 0L);
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) view.findViewById(R.id.title1);
        int iDpToPxInt = z4 ? Utils.dpToPxInt(autoSizingTextView.getContext(), 32.0f) : 0;
        ViewGroup.LayoutParams layoutParams = autoSizingTextView.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (Utils.isRtl()) {
            layoutParams2.leftMargin = iDpToPxInt;
        } else {
            layoutParams2.rightMargin = iDpToPxInt;
        }
        autoSizingTextView.setLayoutParams(layoutParams2);
        autoSizingTextView.setText(pollOption.title);
        autoSizingTextView.resizingFromMaxSize();
        View viewFindViewById2 = view.findViewById(R.id.title2);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "optionView.findViewById<TextView>(R.id.title2)");
        ((TextView) viewFindViewById2).setText(pollOption.title);
        View viewFindViewById3 = view.findViewById(R.id.check);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "optionView.findViewById<View>(R.id.check)");
        viewFindViewById3.setVisibility(zEquals ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateOptions(boolean z) {
        List<PollOption> list;
        int i;
        boolean z2;
        PollAttach pollAttach = this.currentPoll;
        if (pollAttach == null || (list = pollAttach.polloptList) == null) {
            return;
        }
        ArrayList<PollOption> arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((PollOption) next) != null) {
                arrayList.add(next);
            }
        }
        this.titleTV.setText(pollAttach.title);
        int size = this.optionViewList.size();
        if (arrayList.size() < size) {
            this.optionViewList.removeAll(this.optionViewList.subList(arrayList.size(), size));
            this.optionContainer.removeViews(arrayList.size(), size - arrayList.size());
        }
        if (arrayList.size() > size) {
            Iterator<Integer> it2 = RangesKt___RangesKt.until(size, arrayList.size()).iterator();
            while (it2.hasNext()) {
                ((IntIterator) it2).nextInt();
                View optionView = LayoutInflater.from(getContext()).inflate(R.layout.scene_poll_option_play_layout, (ViewGroup) this, false);
                List<View> list2 = this.optionViewList;
                Intrinsics.checkExpressionValueIsNotNull(optionView, "optionView");
                list2.add(optionView);
                this.optionContainer.addView(optionView);
            }
        }
        if (arrayList.isEmpty()) {
            z2 = true;
        } else {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                if (((PollOption) it3.next()).firstMedia() != null) {
                    z2 = false;
                    break;
                }
            }
            z2 = true;
        }
        int i2 = 0;
        for (PollOption pollOption : arrayList) {
            i2 += this.isGlobalVote ? pollOption.globalVotesCount : pollOption.votesCount;
        }
        int i3 = (isVoted() ? 1 : (!TextUtils.isEmpty(this.votedOptionIdBackup) ? 1 : 0) + 0) + i2;
        boolean z3 = !this.isRequesting && isVoted();
        if (i3 == 0) {
            this.voteCountTV.setVisibility(8);
        } else if (i3 == 1) {
            this.voteCountTV.setVisibility(0);
            this.voteCountTV.setText(getResources().getString(R.string.poll_one_vote));
        } else {
            this.voteCountTV.setVisibility(0);
            this.voteCountTV.setText(getResources().getString(R.string.poll_n_votes, Integer.valueOf(i3)));
        }
        if (z3) {
            this.hasShowResultOnce = true;
            this.changeVoteTV.setVisibility(0);
            this.changeVoteTV.setText(getResources().getString(R.string.detail_vote_change_vote));
            this.changeVoteTV.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.poll.ScenePollPlayView.updateOptions.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (ScenePollPlayView.this.isRequesting) {
                        return;
                    }
                    ScenePollPlayView.this.startChangeVote();
                }
            });
        } else if (!TextUtils.isEmpty(this.votedOptionIdBackup)) {
            this.changeVoteTV.setVisibility(0);
            this.changeVoteTV.setText(getResources().getString(R.string.detail_vote_view_result));
            this.changeVoteTV.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.poll.ScenePollPlayView.updateOptions.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (ScenePollPlayView.this.isRequesting) {
                        return;
                    }
                    ScenePollPlayView.this.forceShowPollResult();
                }
            });
        } else if (this.hasShowResultOnce) {
            this.changeVoteTV.setVisibility(0);
        } else {
            this.changeVoteTV.setVisibility(8);
        }
        for (Object obj : arrayList) {
            int i4 = i + 1;
            if (i >= 0) {
                PollOption pollOption2 = (PollOption) obj;
                if (i < this.optionViewList.size()) {
                    View view = this.optionViewList.get(i);
                    Intrinsics.checkExpressionValueIsNotNull(pollOption2, "pollOption");
                    updateOption(view, pollOption2, z2, z3, z, i3);
                }
                i = i4;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void forceShowPollResult() {
        LogEvent.Builder builderExtraParam = getLogEventBuilder().actSemantic(ActSemantic.wildcard).area("PollViewResultButton").extraParam("pollShowId", this.showId);
        PollAttach pollAttach = this.currentPoll;
        builderExtraParam.extraParam("pollId", pollAttach != null ? pollAttach.attachId : null).send();
        if (TextUtils.isEmpty(this.votedOptionId) || !TextUtils.isEmpty(this.votedOptionIdBackup)) {
            this.votedOptionId = this.votedOptionIdBackup;
            this.votedOptionIdBackup = null;
        }
        updateOptions(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startChangeVote() {
        LogEvent.Builder builderExtraParam = getLogEventBuilder().actSemantic(ActSemantic.wildcard).area("PollChangeVoteButton").extraParam("pollShowId", this.showId);
        PollAttach pollAttach = this.currentPoll;
        builderExtraParam.extraParam("pollId", pollAttach != null ? pollAttach.attachId : null).send();
        this.votedOptionIdBackup = this.votedOptionId;
        this.votedOptionId = null;
        this.isRequesting = false;
        updateOptions(false);
        startCountDown(POLL_COUNT_DOWN_MS);
    }

    private final boolean isVoted() {
        return !TextUtils.isEmpty(this.votedOptionId);
    }

    private final void setVisibility(View view, int i, boolean z) {
        if (view.getVisibility() != i) {
            view.setVisibility(i);
            if (z) {
                view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), i == 0 ? R.anim.fade_in : R.anim.fade_out));
            } else {
                view.clearAnimation();
            }
        }
    }

    private final String getVotedOptionId() {
        if (this.isPlayed && isVoted()) {
            return this.votedOptionId;
        }
        if (TextUtils.isEmpty(this.votedOptionIdBackup)) {
            return null;
        }
        return this.votedOptionIdBackup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipToNextScene() {
        if (!TextUtils.isEmpty(getVotedOptionId())) {
            ScenePlayListener scenePlayListener = this.scenePlayListener;
            if (scenePlayListener != null) {
                scenePlayListener.onScenePlayEnd(this.sceneId);
                return;
            }
            return;
        }
        ScenePlayListener scenePlayListener2 = this.scenePlayListener;
        if (scenePlayListener2 != null) {
            scenePlayListener2.onScenePlayEnd(this.sceneId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<PollOption> getPolloptListFixed() {
        List<PollOption> list;
        Object next;
        PollAttach pollAttach = (PollAttach) JacksonUtils.readAs(JacksonUtils.writeAsString(this.currentPoll), PollAttach.class);
        if (pollAttach != null && (list = pollAttach.polloptList) != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (TextUtils.equals(((PollOption) next).polloptId, this.votedOptionId)) {
                    break;
                }
            }
            PollOption pollOption = (PollOption) next;
            if (pollOption != null) {
                if (this.isGlobalVote) {
                    if (pollOption.globalVotedValue == 0) {
                        pollOption.globalVotesCount++;
                        pollOption.globalVotedValue = 1;
                    }
                } else if (pollOption.votedValue == 0) {
                    pollOption.votesCount++;
                    pollOption.votedValue = 1;
                }
            }
        }
        if (pollAttach != null) {
            return pollAttach.polloptList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCountDown(long j) {
        removeCallbacks(this.countDownRunnable);
        this.countDownTime = j;
        onCountDownUpdate(j);
        postDelayed(this.countDownRunnable, 1000L);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        removeCallbacks(this.countDownRunnable);
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.ScenePlayView
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        updateCountDownState(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCountDownState(boolean z) {
        removeCallbacks(this.countDownRunnable);
        if (z) {
            postDelayed(this.countDownRunnable, 1000L);
        }
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.SceneInteractLogView
    public void logStart() {
        super.logStart();
        LogEvent.Builder builderExtraParam = getLogEventBuilder().actSemantic(ActSemantic.pollStart).area(AREA_POLL).extraParam("pollShowId", this.showId);
        PollAttach pollAttach = this.currentPoll;
        builderExtraParam.extraParam("pollId", pollAttach != null ? pollAttach.attachId : null).send();
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.SceneInteractLogView
    public void logEnd() {
        if (this.startTime == 0) {
            return;
        }
        LogEvent.Builder builderExtraParam = getLogEventBuilder().actSemantic(ActSemantic.pollEnd).area(AREA_POLL).extraParam("pollShowId", this.showId);
        PollAttach pollAttach = this.currentPoll;
        builderExtraParam.extraParam("pollId", pollAttach != null ? pollAttach.attachId : null).extraParam("endType", (TextUtils.isEmpty(getVotedOptionId()) || !this.isFirstTimePlay) ? "skip" : StoryNotificationStub.ACTION_VOTE).extraParam("pq_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.startTime)).send();
        this.startTime = 0L;
    }
}
