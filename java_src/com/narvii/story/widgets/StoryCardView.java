package com.narvii.story.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: StoryCardView.kt */
/* loaded from: classes3.dex */
public final class StoryCardView extends FlexLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "imgThumb", "getImgThumb()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "pollTagView", "getPollTagView()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "quizTagView", "getQuizTagView()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "topicView", "getTopicView()Lcom/narvii/story/widgets/StoryTopicView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "tvTitle", "getTvTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "disableMask", "getDisableMask()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "userAvatarLayout", "getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "nicknameView", "getNicknameView()Lcom/narvii/widget/NicknameView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "viewCountIndicator", "getViewCountIndicator()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "viewCount", "getViewCount()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "fansOnlyImg", "getFansOnlyImg()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryCardView.class), "quizPollText", "getQuizPollText()Landroid/widget/TextView;"))};
    private HashMap _$_findViewCache;
    private final Lazy disableMask$delegate;
    private final Lazy fansOnlyImg$delegate;
    private final Lazy imgThumb$delegate;
    private final Lazy nicknameView$delegate;
    private final Lazy pollTagView$delegate;
    private final Lazy quizPollText$delegate;
    private final Lazy quizTagView$delegate;
    private final Lazy topicView$delegate;
    private final Lazy tvTitle$delegate;
    private final Lazy userAvatarLayout$delegate;
    private final Lazy viewCount$delegate;
    private final Lazy viewCountIndicator$delegate;

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

    public final View getDisableMask() {
        Lazy lazy = this.disableMask$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (View) lazy.getValue();
    }

    public final View getFansOnlyImg() {
        Lazy lazy = this.fansOnlyImg$delegate;
        KProperty kProperty = $$delegatedProperties[10];
        return (View) lazy.getValue();
    }

    public final NVImageView getImgThumb() {
        Lazy lazy = this.imgThumb$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (NVImageView) lazy.getValue();
    }

    public final NicknameView getNicknameView() {
        Lazy lazy = this.nicknameView$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (NicknameView) lazy.getValue();
    }

    public final ImageView getPollTagView() {
        Lazy lazy = this.pollTagView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ImageView) lazy.getValue();
    }

    public final TextView getQuizPollText() {
        Lazy lazy = this.quizPollText$delegate;
        KProperty kProperty = $$delegatedProperties[11];
        return (TextView) lazy.getValue();
    }

    public final ImageView getQuizTagView() {
        Lazy lazy = this.quizTagView$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ImageView) lazy.getValue();
    }

    public final StoryTopicView getTopicView() {
        Lazy lazy = this.topicView$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (StoryTopicView) lazy.getValue();
    }

    public final TextView getTvTitle() {
        Lazy lazy = this.tvTitle$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    public final UserAvatarLayout getUserAvatarLayout() {
        Lazy lazy = this.userAvatarLayout$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (UserAvatarLayout) lazy.getValue();
    }

    public final TextView getViewCount() {
        Lazy lazy = this.viewCount$delegate;
        KProperty kProperty = $$delegatedProperties[9];
        return (TextView) lazy.getValue();
    }

    public final View getViewCountIndicator() {
        Lazy lazy = this.viewCountIndicator$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (View) lazy.getValue();
    }

    public StoryCardView(Context context) {
        super(context);
        this.imgThumb$delegate = bind(R.id.img);
        this.pollTagView$delegate = bind(R.id.poll_tag_iv);
        this.quizTagView$delegate = bind(R.id.quiz_tag_iv);
        this.topicView$delegate = bind(R.id.story_topic);
        this.tvTitle$delegate = bind(R.id.title);
        this.disableMask$delegate = bind(R.id.disable_mask);
        this.userAvatarLayout$delegate = bind(R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(R.id.nickname);
        this.viewCountIndicator$delegate = bind(R.id.view_count_indicator);
        this.viewCount$delegate = bind(R.id.view_count);
        this.fansOnlyImg$delegate = bind(R.id.fans_only_indicator_img);
        this.quizPollText$delegate = bind(R.id.poll_quiz_count);
    }

    public StoryCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.imgThumb$delegate = bind(R.id.img);
        this.pollTagView$delegate = bind(R.id.poll_tag_iv);
        this.quizTagView$delegate = bind(R.id.quiz_tag_iv);
        this.topicView$delegate = bind(R.id.story_topic);
        this.tvTitle$delegate = bind(R.id.title);
        this.disableMask$delegate = bind(R.id.disable_mask);
        this.userAvatarLayout$delegate = bind(R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(R.id.nickname);
        this.viewCountIndicator$delegate = bind(R.id.view_count_indicator);
        this.viewCount$delegate = bind(R.id.view_count);
        this.fansOnlyImg$delegate = bind(R.id.fans_only_indicator_img);
        this.quizPollText$delegate = bind(R.id.poll_quiz_count);
    }

    public StoryCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.imgThumb$delegate = bind(R.id.img);
        this.pollTagView$delegate = bind(R.id.poll_tag_iv);
        this.quizTagView$delegate = bind(R.id.quiz_tag_iv);
        this.topicView$delegate = bind(R.id.story_topic);
        this.tvTitle$delegate = bind(R.id.title);
        this.disableMask$delegate = bind(R.id.disable_mask);
        this.userAvatarLayout$delegate = bind(R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(R.id.nickname);
        this.viewCountIndicator$delegate = bind(R.id.view_count_indicator);
        this.viewCount$delegate = bind(R.id.view_count);
        this.fansOnlyImg$delegate = bind(R.id.fans_only_indicator_img);
        this.quizPollText$delegate = bind(R.id.poll_quiz_count);
    }

    public final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.story.widgets.StoryCardView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return StoryCardView.this.findViewById(i);
            }
        });
    }

    public final void setStory(Blog blog) {
        Integer num;
        Integer num2;
        Integer num3;
        View disableMask = getDisableMask();
        int i = 8;
        if (disableMask != null) {
            disableMask.setVisibility((blog == null || blog.status != 9) ? 8 : 0);
        }
        if (getImgThumb() instanceof SecretImageView) {
            NVImageView imgThumb = getImgThumb();
            if (!(imgThumb instanceof SecretImageView)) {
                imgThumb = null;
            }
            SecretImageView secretImageView = (SecretImageView) imgThumb;
            if (secretImageView != null) {
                secretImageView.setImageMedia(blog != null ? blog.getExtraCoverMedia() : null, blog != null ? blog.needHidden : false);
            }
        } else {
            NVImageView imgThumb2 = getImgThumb();
            if (imgThumb2 != null) {
                imgThumb2.setImageMedia(blog != null ? blog.getExtraCoverMedia() : null);
            }
        }
        ImageView pollTagView = getPollTagView();
        if (pollTagView != null) {
            pollTagView.setVisibility((blog == null || !blog.containsScenePoll()) ? 8 : 0);
        }
        ImageView quizTagView = getQuizTagView();
        if (quizTagView != null) {
            if (blog != null && blog.containsSceneQuiz()) {
                i = 0;
            }
            quizTagView.setVisibility(i);
        }
        StoryTopicView topicView = getTopicView();
        if (topicView != null) {
            topicView.setTopic(blog != null ? blog.promotedTopic : null);
        }
        ViewUtils.show(getTopicView(), (blog != null ? blog.promotedTopic : null) != null);
        ViewUtils.show(this, R.id.shadow, (blog != null ? blog.promotedTopic : null) != null);
        TextView tvTitle = getTvTitle();
        if (tvTitle != null) {
            tvTitle.setText(blog != null ? blog.title : null);
        }
        UserAvatarLayout userAvatarLayout = getUserAvatarLayout();
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(blog != null ? blog.author : null);
        }
        NicknameView nicknameView = getNicknameView();
        if (nicknameView != null) {
            nicknameView.setUser(blog != null ? blog.author : null);
        }
        View viewCountIndicator = getViewCountIndicator();
        if (blog == null || (num = blog.viewCount) == null) {
            num = 0;
        }
        ViewUtils.show(viewCountIndicator, Intrinsics.compare(num.intValue(), 10) >= 0);
        TextView viewCount = getViewCount();
        if (blog == null || (num2 = blog.viewCount) == null) {
            num2 = 0;
        }
        ViewUtils.show(viewCount, Intrinsics.compare(num2.intValue(), 10) >= 0);
        TextView viewCount2 = getViewCount();
        if (viewCount2 != null) {
            if (blog == null || (num3 = blog.viewCount) == null) {
                num3 = 0;
            }
            viewCount2.setText(TextUtils.getLiteCountWithCeil2(num3.intValue()));
        }
        View fansOnlyImg = getFansOnlyImg();
        if (fansOnlyImg != null) {
            fansOnlyImg.setVisibility((blog == null || !blog.isFansOnly()) ? 4 : 0);
        }
    }
}
