package com.narvii.topic.widgets;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.story.StoryTopic;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class GeneralTopicCard extends FlexLayout {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MIN_ONLINE_MEMBERS = Integer.MAX_VALUE;

    @NotNull
    private final m greenOval$delegate;
    private boolean isShownOnlineInfo;
    private boolean isShownSubscribeTag;

    @NotNull
    private final m onlineMemberView$delegate;

    @NotNull
    private final m storyCover$delegate;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.topic.widgets.GeneralTopicCard$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return GeneralTopicCard.this.findViewById(this.$res);
        }
    }

    public GeneralTopicCard(@Nullable Context context) {
        super(context);
        this.storyCover$delegate = bind(R.id.img_container);
        this.onlineMemberView$delegate = bind(R.id.online_member_count);
        this.greenOval$delegate = bind(R.id.green_oval);
    }

    public final boolean isShownOnlineInfo() {
        return this.isShownOnlineInfo;
    }

    public final boolean isShownSubscribeTag() {
        return this.isShownSubscribeTag;
    }

    public final void setShownOnlineInfo(boolean z6) {
        this.isShownOnlineInfo = z6;
    }

    public final void setShownSubscribeTag(boolean z6) {
        this.isShownSubscribeTag = z6;
    }

    private final View getGreenOval() {
        return (View) this.greenOval$delegate.getValue();
    }

    private final TextView getOnlineMemberView() {
        return (TextView) this.onlineMemberView$delegate.getValue();
    }

    private final TopicCardCoverView getStoryCover() {
        return (TopicCardCoverView) this.storyCover$delegate.getValue();
    }

    @NotNull
    public final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    public final void setTopic(@Nullable StoryTopic storyTopic) {
        String strValueOf;
        if (storyTopic != null) {
            if (this.isShownSubscribeTag) {
                TopicCardCoverView storyCover = getStoryCover();
                if (storyCover != null) {
                    storyCover.showSubscribeTag();
                }
            } else {
                TopicCardCoverView storyCover2 = getStoryCover();
                if (storyCover2 != null) {
                    storyCover2.hideSubscribeTag();
                }
            }
            TopicCardCoverView storyCover3 = getStoryCover();
            if (storyCover3 != null) {
                storyCover3.setTopic(storyTopic);
            }
            if (!this.isShownOnlineInfo) {
                View greenOval = getGreenOval();
                if (greenOval != null) {
                    greenOval.setVisibility(8);
                }
                TextView onlineMemberView = getOnlineMemberView();
                if (onlineMemberView == null) {
                    return;
                }
                onlineMemberView.setVisibility(8);
                return;
            }
            StoryTopic.ActiveInfo activeInfo = storyTopic.activeInfo;
            if (activeInfo == null || activeInfo.memberCount < Integer.MAX_VALUE) {
                if (storyTopic.storyCount <= 0) {
                    View greenOval2 = getGreenOval();
                    if (greenOval2 != null) {
                        greenOval2.setVisibility(8);
                    }
                    TextView onlineMemberView2 = getOnlineMemberView();
                    if (onlineMemberView2 == null) {
                        return;
                    }
                    onlineMemberView2.setVisibility(8);
                    return;
                }
                TextView onlineMemberView3 = getOnlineMemberView();
                if (onlineMemberView3 != null) {
                    onlineMemberView3.setTextColor(-1);
                }
                TextView onlineMemberView4 = getOnlineMemberView();
                if (onlineMemberView4 != null) {
                    Context context = getContext();
                    int i10 = storyTopic.storyCount;
                    onlineMemberView4.setText(context.getString(i10 > 1 ? R.string.sotry_count_n : R.string.sotry_count_1, String.valueOf(i10)));
                }
                View greenOval3 = getGreenOval();
                if (greenOval3 != null) {
                    greenOval3.setVisibility(8);
                }
                TextView onlineMemberView5 = getOnlineMemberView();
                if (onlineMemberView5 == null) {
                    return;
                }
                onlineMemberView5.setVisibility(0);
                return;
            }
            TextView onlineMemberView6 = getOnlineMemberView();
            if (onlineMemberView6 != null) {
                onlineMemberView6.setTextColor(Color.parseColor("#38D89C"));
            }
            int i11 = storyTopic.activeInfo.memberCount;
            if (i11 >= 0 && i11 < 99999) {
                strValueOf = String.valueOf(i11);
            } else if (99999 > i11 || i11 >= 999999) {
                strValueOf = "1M";
            } else {
                strValueOf = ((i11 + 1) / 100000) + "00K";
            }
            TextView onlineMemberView7 = getOnlineMemberView();
            if (onlineMemberView7 != null) {
                onlineMemberView7.setText(getContext().getString(R.string.members_online_n, strValueOf));
            }
            View greenOval4 = getGreenOval();
            if (greenOval4 != null) {
                greenOval4.setVisibility(0);
            }
            TextView onlineMemberView8 = getOnlineMemberView();
            if (onlineMemberView8 == null) {
                return;
            }
            onlineMemberView8.setVisibility(0);
        }
    }

    public GeneralTopicCard(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.storyCover$delegate = bind(R.id.img_container);
        this.onlineMemberView$delegate = bind(R.id.online_member_count);
        this.greenOval$delegate = bind(R.id.green_oval);
    }

    public GeneralTopicCard(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.storyCover$delegate = bind(R.id.img_container);
        this.onlineMemberView$delegate = bind(R.id.online_member_count);
        this.greenOval$delegate = bind(R.id.green_oval);
    }
}
