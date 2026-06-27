package com.narvii.story.vote;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.User;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FollowView.kt */
/* loaded from: classes3.dex */
public final class FollowView extends FrameLayout implements View.OnClickListener, IUserFollow {
    public static final Companion Companion = new Companion(null);
    private static final int FOLLOWED_STATUS = 2;
    private static final int FOLLOWING_STATUS = 1;
    private static final int UNFOLLOW_STATUS = 0;
    private HashMap _$_findViewCache;
    private ImageView addImage;
    private FrameLayout followLayout;
    private NVImageView followSuccImg;
    private TextView followTxt;
    private SpinningView loadingView;
    private NVContext nvContext;
    private OnFollowClickListener onFollowClickListener;
    private int status;
    private User user;
    private UserFollowDelegate userFollowDelegate;

    /* compiled from: FollowView.kt */
    public interface OnFollowClickListener {
        void onFollowClicked(User user);
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

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        return false;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ boolean needUpdateUserAfterFollow() {
        return IUserFollow.CC.$default$needUpdateUserAfterFollow(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
    }

    /* compiled from: FollowView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FollowView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.follow_view, this);
        View viewFindViewById = findViewById(R.id.add_img);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.add_img)");
        this.addImage = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.follow_txt);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.follow_txt)");
        this.followTxt = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.user_follow_progress)");
        this.loadingView = (SpinningView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_success_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.follow_success_layout)");
        this.followSuccImg = (NVImageView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.follow_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.follow_layout)");
        this.followLayout = (FrameLayout) viewFindViewById5;
        setOnClickListener(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FollowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.follow_view, this);
        View viewFindViewById = findViewById(R.id.add_img);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.add_img)");
        this.addImage = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.follow_txt);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.follow_txt)");
        this.followTxt = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.user_follow_progress)");
        this.loadingView = (SpinningView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_success_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.follow_success_layout)");
        this.followSuccImg = (NVImageView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.follow_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.follow_layout)");
        this.followLayout = (FrameLayout) viewFindViewById5;
        setOnClickListener(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FollowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.follow_view, this);
        View viewFindViewById = findViewById(R.id.add_img);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.add_img)");
        this.addImage = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.follow_txt);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.follow_txt)");
        this.followTxt = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.user_follow_progress)");
        this.loadingView = (SpinningView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_success_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.follow_success_layout)");
        this.followSuccImg = (NVImageView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.follow_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.follow_layout)");
        this.followLayout = (FrameLayout) viewFindViewById5;
        setOnClickListener(this);
    }

    public OnFollowClickListener getOnFollowClickListener() {
        return this.onFollowClickListener;
    }

    public void setOnFollowClickListener(OnFollowClickListener onFollowClickListener) {
        this.onFollowClickListener = onFollowClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.status != 0) {
            return;
        }
        OnFollowClickListener onFollowClickListener = getOnFollowClickListener();
        if (onFollowClickListener != null) {
            User user = this.user;
            if (user == null) {
                Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
                throw null;
            }
            onFollowClickListener.onFollowClicked(user);
        }
        if (this.userFollowDelegate != null) {
            setStatus(1);
            UserFollowDelegate userFollowDelegate = this.userFollowDelegate;
            if (userFollowDelegate != null) {
                User user2 = this.user;
                if (user2 != null) {
                    userFollowDelegate.follow(user2);
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException(GlobalProfileFragment.KEY_USER);
                    throw null;
                }
            }
        }
    }

    public final void initViews(User user, NVContext context, boolean z) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.user = user;
        this.nvContext = context;
        this.userFollowDelegate = new UserFollowDelegate(this, context);
        setStatus(z ? 0 : 2);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followSuccess() {
        setStatus(2);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followFail() {
        setStatus(0);
    }

    private final void setStatus(int i) {
        this.status = i;
        if (i == 0) {
            this.followLayout.setVisibility(0);
            this.addImage.setVisibility(0);
            this.followTxt.setVisibility(0);
            this.loadingView.setVisibility(4);
            this.followSuccImg.setVisibility(4);
            return;
        }
        if (i == 1) {
            this.followLayout.setVisibility(0);
            this.addImage.setVisibility(4);
            this.followTxt.setVisibility(4);
            this.loadingView.setVisibility(0);
            this.followSuccImg.setVisibility(4);
            return;
        }
        if (i != 2) {
            return;
        }
        this.followLayout.setVisibility(4);
        this.addImage.setVisibility(4);
        this.followTxt.setVisibility(4);
        this.loadingView.setVisibility(4);
        this.followSuccImg.setVisibility(0);
    }
}
