package com.narvii.topic.widgets;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.story.widgets.StoryTopicView;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: GeneralTopicCard.kt */
/* loaded from: classes3.dex */
public final class GeneralTopicCard extends FlexLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GeneralTopicCard.class), "storyCover", "getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GeneralTopicCard.class), "topicView", "getTopicView()Lcom/narvii/story/widgets/StoryTopicView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GeneralTopicCard.class), "onlineMemberView", "getOnlineMemberView()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GeneralTopicCard.class), "greenOval", "getGreenOval()Landroid/view/View;"))};
    public static final Companion Companion = new Companion(null);
    private static final int MIN_ONLINE_MEMBERS = Integer.MAX_VALUE;
    private HashMap _$_findViewCache;
    private final Lazy greenOval$delegate;
    private boolean isShownOnlineInfo;
    private boolean isShownSubscribeTag;
    private final Lazy onlineMemberView$delegate;
    private final Lazy storyCover$delegate;
    private final Lazy topicView$delegate;

    private final View getGreenOval() {
        Lazy lazy = this.greenOval$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (View) lazy.getValue();
    }

    private final TextView getOnlineMemberView() {
        Lazy lazy = this.onlineMemberView$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    private final TopicCardCoverView getStoryCover() {
        Lazy lazy = this.storyCover$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TopicCardCoverView) lazy.getValue();
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

    public final StoryTopicView getTopicView() {
        Lazy lazy = this.topicView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (StoryTopicView) lazy.getValue();
    }

    public final boolean isShownOnlineInfo() {
        return this.isShownOnlineInfo;
    }

    public final void setShownOnlineInfo(boolean z) {
        this.isShownOnlineInfo = z;
    }

    public final boolean isShownSubscribeTag() {
        return this.isShownSubscribeTag;
    }

    public final void setShownSubscribeTag(boolean z) {
        this.isShownSubscribeTag = z;
    }

    public GeneralTopicCard(Context context) {
        super(context);
        this.storyCover$delegate = bind(R.id.img_container);
        this.topicView$delegate = bind(R.id.topic_view);
        this.onlineMemberView$delegate = bind(R.id.online_member_count);
        this.greenOval$delegate = bind(R.id.green_oval);
    }

    public GeneralTopicCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.storyCover$delegate = bind(R.id.img_container);
        this.topicView$delegate = bind(R.id.topic_view);
        this.onlineMemberView$delegate = bind(R.id.online_member_count);
        this.greenOval$delegate = bind(R.id.green_oval);
    }

    public GeneralTopicCard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.storyCover$delegate = bind(R.id.img_container);
        this.topicView$delegate = bind(R.id.topic_view);
        this.onlineMemberView$delegate = bind(R.id.online_member_count);
        this.greenOval$delegate = bind(R.id.green_oval);
    }

    public final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.topic.widgets.GeneralTopicCard.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return GeneralTopicCard.this.findViewById(i);
            }
        });
    }

    public final void setTopic(StoryTopic storyTopic) {
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
            StoryTopicView topicView = getTopicView();
            if (topicView != null) {
                topicView.setTopic(storyTopic);
            }
            StoryTopicView topicView2 = getTopicView();
            if (topicView2 != null) {
                topicView2.setClickable(true);
            }
            if (!this.isShownOnlineInfo) {
                View greenOval = getGreenOval();
                if (greenOval != null) {
                    greenOval.setVisibility(8);
                }
                TextView onlineMemberView = getOnlineMemberView();
                if (onlineMemberView != null) {
                    onlineMemberView.setVisibility(8);
                    return;
                }
                return;
            }
            StoryTopic.ActiveInfo activeInfo = storyTopic.activeInfo;
            if (activeInfo != null && activeInfo.memberCount >= Integer.MAX_VALUE) {
                TextView onlineMemberView2 = getOnlineMemberView();
                if (onlineMemberView2 != null) {
                    onlineMemberView2.setTextColor(Color.parseColor("#38D89C"));
                }
                int i = storyTopic.activeInfo.memberCount;
                if (i >= 0 && 99998 >= i) {
                    strValueOf = String.valueOf(i);
                } else if (99999 <= i && 999998 >= i) {
                    strValueOf = ((storyTopic.activeInfo.memberCount + 1) / 100000) + "00K";
                } else {
                    strValueOf = "1M";
                }
                TextView onlineMemberView3 = getOnlineMemberView();
                if (onlineMemberView3 != null) {
                    onlineMemberView3.setText(getContext().getString(R.string.members_online_n, strValueOf));
                }
                View greenOval2 = getGreenOval();
                if (greenOval2 != null) {
                    greenOval2.setVisibility(0);
                }
                TextView onlineMemberView4 = getOnlineMemberView();
                if (onlineMemberView4 != null) {
                    onlineMemberView4.setVisibility(0);
                    return;
                }
                return;
            }
            if (storyTopic.storyCount > 0) {
                TextView onlineMemberView5 = getOnlineMemberView();
                if (onlineMemberView5 != null) {
                    onlineMemberView5.setTextColor(-1);
                }
                TextView onlineMemberView6 = getOnlineMemberView();
                if (onlineMemberView6 != null) {
                    onlineMemberView6.setText(getContext().getString(storyTopic.storyCount > 1 ? R.string.sotry_count_n : R.string.sotry_count_1, String.valueOf(storyTopic.storyCount)));
                }
                View greenOval3 = getGreenOval();
                if (greenOval3 != null) {
                    greenOval3.setVisibility(8);
                }
                TextView onlineMemberView7 = getOnlineMemberView();
                if (onlineMemberView7 != null) {
                    onlineMemberView7.setVisibility(0);
                    return;
                }
                return;
            }
            View greenOval4 = getGreenOval();
            if (greenOval4 != null) {
                greenOval4.setVisibility(8);
            }
            TextView onlineMemberView8 = getOnlineMemberView();
            if (onlineMemberView8 != null) {
                onlineMemberView8.setVisibility(8);
            }
        }
    }

    /* compiled from: GeneralTopicCard.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
