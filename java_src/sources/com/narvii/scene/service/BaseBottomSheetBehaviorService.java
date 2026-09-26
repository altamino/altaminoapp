package com.narvii.scene.service;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.github.mmin18.widget.FlexLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseBottomSheetBehaviorService {

    @Nullable
    private BottomSheetBehavior<FlexLayout> behavior;

    @NotNull
    private final m bottomSheetCallback$delegate;

    @Nullable
    private Integer bottomState;

    @NotNull
    private final NVContext ctx;

    @Nullable
    private ViewGroup rootView;

    public final void dismiss() {
        updateBottomSheet(4);
    }

    @Nullable
    protected final BottomSheetBehavior<FlexLayout> getBehavior() {
        return this.behavior;
    }

    @Nullable
    protected final Integer getBottomState() {
        return this.bottomState;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    protected final ViewGroup getRootView() {
        return this.rootView;
    }

    public abstract int initBottomLayout();

    @NotNull
    public abstract NVFragment initFragment();

    public void onBottomLayoutCreated(@NotNull View view) {
        t.j(view, "view");
    }

    public void onCollapsed() {
    }

    protected final void setBehavior(@Nullable BottomSheetBehavior<FlexLayout> bottomSheetBehavior) {
        this.behavior = bottomSheetBehavior;
    }

    protected final void setBottomState(@Nullable Integer num) {
        this.bottomState = num;
    }

    protected final void setRootView(@Nullable ViewGroup viewGroup) {
        this.rootView = viewGroup;
    }

    public void showContent() {
        updateRootView(true);
        updateBottomSheet(3);
    }

    public BaseBottomSheetBehaviorService(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.bottomSheetCallback$delegate = o.a(new BaseBottomSheetBehaviorService$bottomSheetCallback$2(this));
    }

    @Nullable
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

    @NotNull
    protected final BottomSheetBehavior.f getBottomSheetCallback() {
        return (BottomSheetBehavior.f) this.bottomSheetCallback$delegate.getValue();
    }

    public final void init() {
        Activity activity;
        Window window;
        View decorView;
        if (this.rootView != null || (activity = getActivity()) == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) decorView.findViewById(R.id.decor_drawer_layout);
        if (viewGroup == null) {
            viewGroup = (ViewGroup) decorView.findViewById(android.R.id.content);
        }
        if (viewGroup != null) {
            initRootView(viewGroup);
            NVFragment nVFragmentInitFragment = initFragment();
            NVContext nVContext = this.ctx;
            if (nVContext instanceof NVFragment) {
                ((NVActivity) activity).getSupportFragmentManager().q().u(R.id.bottom_sheet_container, nVFragmentInitFragment).k();
            } else if (nVContext instanceof NVActivity) {
                ((NVActivity) nVContext).getSupportFragmentManager().q().u(R.id.bottom_sheet_container, nVFragmentInitFragment).k();
            }
            ViewGroup viewGroup2 = this.rootView;
            t.g(viewGroup2);
            BottomSheetBehavior<FlexLayout> bottomSheetBehaviorA = BottomSheetBehavior.A(viewGroup2.findViewById(R.id.behavior_layout));
            this.behavior = bottomSheetBehaviorA;
            t.g(bottomSheetBehaviorA);
            bottomSheetBehaviorA.V(0);
            BottomSheetBehavior<FlexLayout> bottomSheetBehavior = this.behavior;
            t.g(bottomSheetBehavior);
            bottomSheetBehavior.Z(4);
            BottomSheetBehavior<FlexLayout> bottomSheetBehavior2 = this.behavior;
            t.g(bottomSheetBehavior2);
            bottomSheetBehavior2.M(getBottomSheetCallback());
        }
    }

    public void initRootView(@NotNull ViewGroup parent) {
        t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(this.ctx.getContext()).inflate(initBottomLayout(), parent, false);
        t.h(viewInflate, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        viewGroup.setOnClickListener(null);
        onBottomLayoutCreated(viewGroup);
        this.rootView = viewGroup;
        parent.addView(viewGroup);
    }

    public final boolean isShowing() {
        Integer num = this.bottomState;
        return num != null && num.intValue() == 3;
    }

    public void show() {
        if (this.rootView != null) {
            showContent();
            return;
        }
        init();
        updateRootView(true);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.service.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseBottomSheetBehaviorService.show$lambda$1(this.f2674a);
            }
        }, 100L);
    }

    protected final void updateBottomSheet(int i10) {
        BottomSheetBehavior<FlexLayout> bottomSheetBehavior = this.behavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.Z(i10);
        }
    }

    protected final void updateRootView(boolean z6) {
        ViewGroup viewGroup = this.rootView;
        if (viewGroup != null) {
            if (z6) {
                if (viewGroup.getVisibility() != 0) {
                    viewGroup.setVisibility(0);
                }
            } else if (viewGroup.getVisibility() == 0) {
                viewGroup.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$1(BaseBottomSheetBehaviorService this$0) {
        t.j(this$0, "this$0");
        this$0.updateBottomSheet(3);
    }
}
