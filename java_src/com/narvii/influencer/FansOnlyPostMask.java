package com.narvii.influencer;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: FansOnlyPostMask.kt */
/* loaded from: classes2.dex */
public final class FansOnlyPostMask extends FrameLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansOnlyPostMask.class), "marginBottomPlaceholder", "getMarginBottomPlaceholder()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansOnlyPostMask.class), "btnBecomeFans", "getBtnBecomeFans()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansOnlyPostMask.class), "bgBottom", "getBgBottom()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansOnlyPostMask.class), "hint", "getHint()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansOnlyPostMask.class), "maskFansLayout", "getMaskFansLayout()Landroid/widget/LinearLayout;"))};
    private HashMap _$_findViewCache;
    public AccountService accountService;
    private BecomeFansClickListener becomeFansClickListener;
    private final Lazy bgBottom$delegate;
    private final Lazy btnBecomeFans$delegate;
    private final Lazy hint$delegate;
    private final Lazy marginBottomPlaceholder$delegate;
    private final Lazy maskFansLayout$delegate;

    /* compiled from: FansOnlyPostMask.kt */
    public interface BecomeFansClickListener {
        void onBecomeFansClicked();
    }

    private final View getBgBottom() {
        Lazy lazy = this.bgBottom$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    private final TextView getBtnBecomeFans() {
        Lazy lazy = this.btnBecomeFans$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
    }

    private final TextView getHint() {
        Lazy lazy = this.hint$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    private final View getMarginBottomPlaceholder() {
        Lazy lazy = this.marginBottomPlaceholder$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    private final LinearLayout getMaskFansLayout() {
        Lazy lazy = this.maskFansLayout$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (LinearLayout) lazy.getValue();
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

    public final void setAuthor(User user) {
        setAuthor$default(this, user, 0, 2, null);
    }

    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public final void setAccountService(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final BecomeFansClickListener getBecomeFansClickListener() {
        return this.becomeFansClickListener;
    }

    public final void setBecomeFansClickListener(BecomeFansClickListener becomeFansClickListener) {
        this.becomeFansClickListener = becomeFansClickListener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FansOnlyPostMask(Context context) {
        this(context, null);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FansOnlyPostMask(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
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
        getBtnBecomeFans().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.influencer.FansOnlyPostMask.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BecomeFansClickListener becomeFansClickListener = FansOnlyPostMask.this.getBecomeFansClickListener();
                if (becomeFansClickListener != null) {
                    becomeFansClickListener.onBecomeFansClicked();
                }
            }
        });
        LinearLayout maskFansLayout = getMaskFansLayout();
        if (maskFansLayout != null) {
            maskFansLayout.setOnClickListener(null);
        }
        View bgBottom = getBgBottom();
        if (bgBottom != null) {
            bgBottom.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.influencer.FansOnlyPostMask.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                }
            });
        }
        Object service = Utils.getNVContext(context).getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"account\")");
        this.accountService = (AccountService) service;
    }

    public static /* synthetic */ void setAuthor$default(FansOnlyPostMask fansOnlyPostMask, User user, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        fansOnlyPostMask.setAuthor(user, i);
    }

    public final void setAuthor(User user, int i) {
        String str;
        FanClub fanClub;
        if (user == null || (str = user.nickname) == null) {
            str = "";
        }
        getHint().setText(getContext().getString(R.string.fans_only_hint, str));
        if (i == -1) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            fanClub = accountService.getFanClub(user != null ? user.uid : null);
        } else {
            AccountService accountService2 = this.accountService;
            if (accountService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            fanClub = accountService2.getFanClub(i, user != null ? user.uid : null);
        }
        setIsFansBefore(fanClub != null && fanClub.hasSubscriptionBefore());
    }

    private final void setIsFansBefore(boolean z) {
        getBtnBecomeFans().setText(z ? R.string.renew : R.string.become_a_fan);
    }

    public final void setMarginBottomHeight(int i) {
        getMarginBottomPlaceholder().getLayoutParams().height = i;
    }

    private final <T extends View> Lazy<T> bind(FansOnlyPostMask fansOnlyPostMask, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.influencer.FansOnlyPostMask.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return FansOnlyPostMask.this.findViewById(i);
            }
        });
    }
}
