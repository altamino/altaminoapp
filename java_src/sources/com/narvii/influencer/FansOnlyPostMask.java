package com.narvii.influencer;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes.dex */
public final class FansOnlyPostMask extends FrameLayout {
    public AccountService accountService;

    @Nullable
    private BecomeFansClickListener becomeFansClickListener;

    @NotNull
    private final m bgBottom$delegate;

    @NotNull
    private final m btnBecomeFans$delegate;

    @NotNull
    private final m hint$delegate;

    @NotNull
    private final m marginBottomPlaceholder$delegate;

    @NotNull
    private final m maskFansLayout$delegate;

    public interface BecomeFansClickListener {
        void onBecomeFansClicked();
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.influencer.FansOnlyPostMask$bind$1, reason: invalid class name */
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
            return FansOnlyPostMask.this.findViewById(this.$res);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FansOnlyPostMask(@NotNull Context context) {
        this(context, null);
        t.j(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(View view) {
    }

    @Nullable
    public final BecomeFansClickListener getBecomeFansClickListener() {
        return this.becomeFansClickListener;
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setAuthor(@Nullable User user) {
        setAuthor$default(this, user, 0, 2, null);
    }

    public final void setBecomeFansClickListener(@Nullable BecomeFansClickListener becomeFansClickListener) {
        this.becomeFansClickListener = becomeFansClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FansOnlyPostMask(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.marginBottomPlaceholder$delegate = bind(this, R.id.margin_bottom_placeholder);
        this.btnBecomeFans$delegate = bind(this, R.id.become_fans);
        this.bgBottom$delegate = bind(this, R.id.bg_bottom);
        this.hint$delegate = bind(this, R.id.hint);
        this.maskFansLayout$delegate = bind(this, R.id.mask_fans_layout);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.FansOnlyPostMask);
        int resourceId = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getResourceId(0, R.layout.mask_fans_only_post) : R.layout.mask_fans_only_post;
        if (typedArrayObtainStyledAttributes != null) {
            typedArrayObtainStyledAttributes.recycle();
        }
        View.inflate(context, resourceId, this);
        getBtnBecomeFans().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.influencer.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FansOnlyPostMask._init_$lambda$1(this.f2281a, view);
            }
        });
        LinearLayout maskFansLayout = getMaskFansLayout();
        if (maskFansLayout != null) {
            maskFansLayout.setOnClickListener(null);
        }
        View bgBottom = getBgBottom();
        if (bgBottom != null) {
            bgBottom.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.influencer.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FansOnlyPostMask._init_$lambda$2(view);
                }
            });
        }
        Object service = Utils.getNVContext(context).getService("account");
        t.i(service, "getService(...)");
        setAccountService((AccountService) service);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(FansOnlyPostMask this$0, View view) {
        t.j(this$0, "this$0");
        BecomeFansClickListener becomeFansClickListener = this$0.becomeFansClickListener;
        if (becomeFansClickListener != null) {
            becomeFansClickListener.onBecomeFansClicked();
        }
    }

    private final <T extends View> m<T> bind(FansOnlyPostMask fansOnlyPostMask, @IdRes int i10) {
        return o.b(q.NONE, fansOnlyPostMask.new AnonymousClass1(i10));
    }

    private final View getBgBottom() {
        return (View) this.bgBottom$delegate.getValue();
    }

    private final TextView getBtnBecomeFans() {
        return (TextView) this.btnBecomeFans$delegate.getValue();
    }

    private final TextView getHint() {
        return (TextView) this.hint$delegate.getValue();
    }

    private final View getMarginBottomPlaceholder() {
        return (View) this.marginBottomPlaceholder$delegate.getValue();
    }

    private final LinearLayout getMaskFansLayout() {
        return (LinearLayout) this.maskFansLayout$delegate.getValue();
    }

    public static /* synthetic */ void setAuthor$default(FansOnlyPostMask fansOnlyPostMask, User user, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        fansOnlyPostMask.setAuthor(user, i10);
    }

    @NotNull
    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        t.B("accountService");
        return null;
    }

    public final void setAuthor(@Nullable User user, int i10) {
        FanClub fanClub;
        String str = user != null ? user.nickname : null;
        if (str == null) {
            str = "";
        }
        getHint().setText(getContext().getString(R.string.fans_only_hint, str));
        if (i10 == -1) {
            fanClub = getAccountService().getFanClub(user != null ? user.uid : null);
        } else {
            fanClub = getAccountService().getFanClub(i10, user != null ? user.uid : null);
        }
        setIsFansBefore(fanClub != null && fanClub.hasSubscriptionBefore());
    }

    private final void setIsFansBefore(boolean z6) {
        int i10;
        TextView btnBecomeFans = getBtnBecomeFans();
        if (z6) {
            i10 = R.string.renew;
        } else {
            i10 = R.string.become_a_fan;
        }
        btnBecomeFans.setText(i10);
    }

    public final void setMarginBottomHeight(int i10) {
        getMarginBottomPlaceholder().getLayoutParams().height = i10;
    }
}
