package com.narvii.scene.service;

import android.app.Activity;
import android.support.design.widget.BottomSheetBehavior;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.scene.service.BaseBottomSheetBehaviorService$bottomSheetCallback$2;
import com.narvii.util.Utils;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: BaseBottomSheetBehaviorService.kt */
/* loaded from: classes3.dex */
public abstract class BaseBottomSheetBehaviorService {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseBottomSheetBehaviorService.class), "bottomSheetCallback", "getBottomSheetCallback()Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;"))};
    private BottomSheetBehavior<FlexLayout> behavior;
    private final Lazy bottomSheetCallback$delegate;
    private Integer bottomState;
    private final NVContext ctx;
    private ViewGroup rootView;

    protected final BottomSheetBehavior.BottomSheetCallback getBottomSheetCallback() {
        Lazy lazy = this.bottomSheetCallback$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (BottomSheetBehavior.BottomSheetCallback) lazy.getValue();
    }

    public abstract int initBottomLayout();

    public abstract NVFragment initFragment();

    public void onBottomLayoutCreated(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
    }

    public void onCollapsed() {
    }

    public BaseBottomSheetBehaviorService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.bottomSheetCallback$delegate = LazyKt__LazyJVMKt.lazy(new Function0<BaseBottomSheetBehaviorService$bottomSheetCallback$2.AnonymousClass1>() { // from class: com.narvii.scene.service.BaseBottomSheetBehaviorService$bottomSheetCallback$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.narvii.scene.service.BaseBottomSheetBehaviorService$bottomSheetCallback$2$1] */
            @Override // kotlin.jvm.functions.Function0
            public final AnonymousClass1 invoke() {
                return new BottomSheetBehavior.BottomSheetCallback() { // from class: com.narvii.scene.service.BaseBottomSheetBehaviorService$bottomSheetCallback$2.1
                    private float oldOffset = -1.0f;

                    public final float getOldOffset() {
                        return this.oldOffset;
                    }

                    public final void setOldOffset(float f) {
                        this.oldOffset = f;
                    }

                    @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
                    public void onSlide(View bottomSheet, float f) {
                        Intrinsics.checkParameterIsNotNull(bottomSheet, "bottomSheet");
                        if (this.oldOffset == -1.0f) {
                            this.oldOffset = f;
                        }
                        if (f - this.oldOffset < 0 && f < 0.05d) {
                            BaseBottomSheetBehaviorService$bottomSheetCallback$2.this.this$0.updateRootView(false);
                        }
                        this.oldOffset = f;
                    }

                    @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
                    public void onStateChanged(View bottomSheet, int i) {
                        Intrinsics.checkParameterIsNotNull(bottomSheet, "bottomSheet");
                        BaseBottomSheetBehaviorService$bottomSheetCallback$2.this.this$0.setBottomState(Integer.valueOf(i));
                        if (i != 4) {
                            return;
                        }
                        BaseBottomSheetBehaviorService$bottomSheetCallback$2.this.this$0.updateRootView(false);
                        BaseBottomSheetBehaviorService$bottomSheetCallback$2.this.this$0.onCollapsed();
                    }
                };
            }
        });
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    protected final ViewGroup getRootView() {
        return this.rootView;
    }

    protected final void setRootView(ViewGroup viewGroup) {
        this.rootView = viewGroup;
    }

    protected final BottomSheetBehavior<FlexLayout> getBehavior() {
        return this.behavior;
    }

    protected final void setBehavior(BottomSheetBehavior<FlexLayout> bottomSheetBehavior) {
        this.behavior = bottomSheetBehavior;
    }

    protected final Integer getBottomState() {
        return this.bottomState;
    }

    protected final void setBottomState(Integer num) {
        this.bottomState = num;
    }

    public final void init() {
        Activity activity;
        Window window;
        View decorView;
        if (this.rootView != null || (activity = getActivity()) == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) decorView.findViewById(R.id.drawer_layout);
        if (viewGroup == null) {
            viewGroup = (ViewGroup) decorView.findViewById(android.R.id.content);
        }
        if (viewGroup != null) {
            initRootView(viewGroup);
            NVFragment nVFragmentInitFragment = initFragment();
            NVContext nVContext = this.ctx;
            if (nVContext instanceof NVFragment) {
                if (activity == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                }
                ((NVActivity) activity).getSupportFragmentManager().beginTransaction().replace(R.id.bottom_sheet_container, nVFragmentInitFragment).commitAllowingStateLoss();
            } else if (nVContext instanceof NVActivity) {
                ((NVActivity) nVContext).getSupportFragmentManager().beginTransaction().replace(R.id.bottom_sheet_container, nVFragmentInitFragment).commitAllowingStateLoss();
            }
            ViewGroup viewGroup2 = this.rootView;
            if (viewGroup2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.behavior = BottomSheetBehavior.from(viewGroup2.findViewById(R.id.behavior_layout));
            BottomSheetBehavior<FlexLayout> bottomSheetBehavior = this.behavior;
            if (bottomSheetBehavior == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            bottomSheetBehavior.setPeekHeight(0);
            BottomSheetBehavior<FlexLayout> bottomSheetBehavior2 = this.behavior;
            if (bottomSheetBehavior2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            bottomSheetBehavior2.setState(4);
            BottomSheetBehavior<FlexLayout> bottomSheetBehavior3 = this.behavior;
            if (bottomSheetBehavior3 != null) {
                bottomSheetBehavior3.setBottomSheetCallback(getBottomSheetCallback());
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
    }

    public void initRootView(ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(this.ctx.getContext()).inflate(initBottomLayout(), parent, false);
        if (viewInflate == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
        }
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        viewGroup.setOnClickListener(null);
        onBottomLayoutCreated(viewGroup);
        this.rootView = viewGroup;
        parent.addView(this.rootView);
    }

    public void show() {
        if (this.rootView == null) {
            init();
            updateRootView(true);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.service.BaseBottomSheetBehaviorService.show.1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseBottomSheetBehaviorService.this.updateBottomSheet(3);
                }
            }, 100L);
            return;
        }
        showContent();
    }

    public void showContent() {
        updateRootView(true);
        updateBottomSheet(3);
    }

    protected final void updateRootView(boolean z) {
        ViewGroup viewGroup = this.rootView;
        if (viewGroup != null) {
            if (z) {
                if (viewGroup.getVisibility() != 0) {
                    viewGroup.setVisibility(0);
                }
            } else if (viewGroup.getVisibility() == 0) {
                viewGroup.setVisibility(8);
            }
        }
    }

    protected final void updateBottomSheet(int i) {
        BottomSheetBehavior<FlexLayout> bottomSheetBehavior = this.behavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.setState(i);
        }
    }

    public final Activity getActivity() {
        Object obj = this.ctx;
        if (obj instanceof NVActivity) {
            return (Activity) obj;
        }
        if (obj instanceof NVFragment) {
            return ((NVFragment) obj).getActivity();
        }
        return null;
    }

    public final boolean isShowing() {
        Integer num = this.bottomState;
        return num != null && num.intValue() == 3;
    }

    public final void dismiss() {
        updateBottomSheet(4);
    }
}
