package com.narvii.story.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.widget.AutoSizingTextView;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryReplayNextView.kt */
/* loaded from: classes3.dex */
public final class StoryReplayNextView extends FrameLayout {
    private static final long COUNT_DOWN_INTERVAL_MS = 1000;
    private static final long COUNT_DOWN_START_MS = 5000;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "StoryReplayNextView";
    private HashMap _$_findViewCache;
    private boolean canceled;
    private final Runnable countDownRunnable;
    private long countDownTime;
    private boolean disabled;
    private IStoryReplayNextClickListener replayNextClickListener;

    /* compiled from: StoryReplayNextView.kt */
    public interface IStoryReplayNextClickListener {
        void onNext(boolean z);

        void onReplay();
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryReplayNextView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.countDownTime = 5000L;
        LayoutInflater.from(getContext()).inflate(R.layout.story_replay_next_view, (ViewGroup) this, true);
        ((AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.replay)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryReplayNextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IStoryReplayNextClickListener replayNextClickListener = StoryReplayNextView.this.getReplayNextClickListener();
                if (replayNextClickListener != null) {
                    replayNextClickListener.onReplay();
                }
            }
        });
        ((AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.next)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryReplayNextView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IStoryReplayNextClickListener replayNextClickListener = StoryReplayNextView.this.getReplayNextClickListener();
                if (replayNextClickListener != null) {
                    replayNextClickListener.onNext(false);
                }
            }
        });
        this.countDownRunnable = new Runnable() { // from class: com.narvii.story.widgets.StoryReplayNextView.3
            @Override // java.lang.Runnable
            public void run() {
                StoryReplayNextView storyReplayNextView = StoryReplayNextView.this;
                storyReplayNextView.setCountDownTime(storyReplayNextView.getCountDownTime() - 1000);
                if (StoryReplayNextView.this.getCountDownTime() > 0) {
                    StoryReplayNextView storyReplayNextView2 = StoryReplayNextView.this;
                    StoryReplayNextView.onCountDownUpdate$default(storyReplayNextView2, storyReplayNextView2.getCountDownTime(), false, 2, null);
                    StoryReplayNextView.this.postDelayed(this, 1000L);
                } else {
                    StoryReplayNextView.this.setCountDownTime(0L);
                    StoryReplayNextView storyReplayNextView3 = StoryReplayNextView.this;
                    StoryReplayNextView.onCountDownUpdate$default(storyReplayNextView3, storyReplayNextView3.getCountDownTime(), false, 2, null);
                }
            }
        };
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryReplayNextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.countDownTime = 5000L;
        LayoutInflater.from(getContext()).inflate(R.layout.story_replay_next_view, (ViewGroup) this, true);
        ((AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.replay)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryReplayNextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IStoryReplayNextClickListener replayNextClickListener = StoryReplayNextView.this.getReplayNextClickListener();
                if (replayNextClickListener != null) {
                    replayNextClickListener.onReplay();
                }
            }
        });
        ((AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.next)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryReplayNextView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IStoryReplayNextClickListener replayNextClickListener = StoryReplayNextView.this.getReplayNextClickListener();
                if (replayNextClickListener != null) {
                    replayNextClickListener.onNext(false);
                }
            }
        });
        this.countDownRunnable = new Runnable() { // from class: com.narvii.story.widgets.StoryReplayNextView.3
            @Override // java.lang.Runnable
            public void run() {
                StoryReplayNextView storyReplayNextView = StoryReplayNextView.this;
                storyReplayNextView.setCountDownTime(storyReplayNextView.getCountDownTime() - 1000);
                if (StoryReplayNextView.this.getCountDownTime() > 0) {
                    StoryReplayNextView storyReplayNextView2 = StoryReplayNextView.this;
                    StoryReplayNextView.onCountDownUpdate$default(storyReplayNextView2, storyReplayNextView2.getCountDownTime(), false, 2, null);
                    StoryReplayNextView.this.postDelayed(this, 1000L);
                } else {
                    StoryReplayNextView.this.setCountDownTime(0L);
                    StoryReplayNextView storyReplayNextView3 = StoryReplayNextView.this;
                    StoryReplayNextView.onCountDownUpdate$default(storyReplayNextView3, storyReplayNextView3.getCountDownTime(), false, 2, null);
                }
            }
        };
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryReplayNextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.countDownTime = 5000L;
        LayoutInflater.from(getContext()).inflate(R.layout.story_replay_next_view, (ViewGroup) this, true);
        ((AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.replay)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryReplayNextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IStoryReplayNextClickListener replayNextClickListener = StoryReplayNextView.this.getReplayNextClickListener();
                if (replayNextClickListener != null) {
                    replayNextClickListener.onReplay();
                }
            }
        });
        ((AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.next)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryReplayNextView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                IStoryReplayNextClickListener replayNextClickListener = StoryReplayNextView.this.getReplayNextClickListener();
                if (replayNextClickListener != null) {
                    replayNextClickListener.onNext(false);
                }
            }
        });
        this.countDownRunnable = new Runnable() { // from class: com.narvii.story.widgets.StoryReplayNextView.3
            @Override // java.lang.Runnable
            public void run() {
                StoryReplayNextView storyReplayNextView = StoryReplayNextView.this;
                storyReplayNextView.setCountDownTime(storyReplayNextView.getCountDownTime() - 1000);
                if (StoryReplayNextView.this.getCountDownTime() > 0) {
                    StoryReplayNextView storyReplayNextView2 = StoryReplayNextView.this;
                    StoryReplayNextView.onCountDownUpdate$default(storyReplayNextView2, storyReplayNextView2.getCountDownTime(), false, 2, null);
                    StoryReplayNextView.this.postDelayed(this, 1000L);
                } else {
                    StoryReplayNextView.this.setCountDownTime(0L);
                    StoryReplayNextView storyReplayNextView3 = StoryReplayNextView.this;
                    StoryReplayNextView.onCountDownUpdate$default(storyReplayNextView3, storyReplayNextView3.getCountDownTime(), false, 2, null);
                }
            }
        };
    }

    public final IStoryReplayNextClickListener getReplayNextClickListener() {
        return this.replayNextClickListener;
    }

    public final void setReplayNextClickListener(IStoryReplayNextClickListener iStoryReplayNextClickListener) {
        this.replayNextClickListener = iStoryReplayNextClickListener;
    }

    public final long getCountDownTime() {
        return this.countDownTime;
    }

    public final void setCountDownTime(long j) {
        this.countDownTime = j;
    }

    public final void setNextEnable(boolean z) {
        this.disabled = !z;
        AutoSizingTextView next = (AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.next);
        Intrinsics.checkExpressionValueIsNotNull(next, "next");
        next.setEnabled(z);
    }

    public final void startCountDown() {
        if (this.disabled || this.canceled) {
            return;
        }
        postDelayed(this.countDownRunnable, 1000L);
        onCountDownUpdate$default(this, this.countDownTime, false, 2, null);
    }

    public final void pauseCountDown() {
        if (this.disabled || this.canceled) {
            return;
        }
        removeCallbacks(this.countDownRunnable);
    }

    public final void cancelCountDown() {
        if (this.disabled || this.canceled) {
            return;
        }
        removeCallbacks(this.countDownRunnable);
        onCountDownUpdate(0L, false);
        this.canceled = true;
    }

    static /* synthetic */ void onCountDownUpdate$default(StoryReplayNextView storyReplayNextView, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        storyReplayNextView.onCountDownUpdate(j, z);
    }

    private final void onCountDownUpdate(long j, boolean z) {
        IStoryReplayNextClickListener iStoryReplayNextClickListener;
        if (j > 0) {
            AutoSizingTextView next = (AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.next);
            Intrinsics.checkExpressionValueIsNotNull(next, "next");
            next.setText(getResources().getString(R.string.next_with_second, Long.valueOf(j / 1000)));
            return;
        }
        AutoSizingTextView next2 = (AutoSizingTextView) _$_findCachedViewById(com.narvii.amino.R.id.next);
        Intrinsics.checkExpressionValueIsNotNull(next2, "next");
        next2.setText(getResources().getString(R.string.next));
        if (!z || (iStoryReplayNextClickListener = this.replayNextClickListener) == null) {
            return;
        }
        iStoryReplayNextClickListener.onNext(true);
    }

    /* compiled from: StoryReplayNextView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
