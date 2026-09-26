package com.narvii.scene.service;

import android.os.Bundle;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.scene.TemplateListFragment;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.util.Log;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.Utils;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class ChooseSceneTemplateService extends BaseBottomSheetBehaviorService implements View.OnClickListener, TemplateListFragment.OnChooseTemplateListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "ChooseSceneTemplateService";
    private int from;

    @Nullable
    private TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener;

    @Nullable
    private TemplateListFragment templateListFragment;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final int getFrom() {
        return this.from;
    }

    @Nullable
    public final TemplateListFragment.OnChooseTemplateListener getOnChooseTemplateListener() {
        return this.onChooseTemplateListener;
    }

    @Nullable
    public final TemplateListFragment getTemplateListFragment() {
        return this.templateListFragment;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public int initBottomLayout() {
        return R.layout.layout_bottom_sheet;
    }

    public final void setFrom(int i10) {
        this.from = i10;
    }

    public final void setOnChooseTemplateListener(@Nullable TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener) {
        this.onChooseTemplateListener = onChooseTemplateListener;
    }

    public final void setTemplateListFragment(@Nullable TemplateListFragment templateListFragment) {
        this.templateListFragment = templateListFragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseSceneTemplateService(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        this.from = 2;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    @NotNull
    public NVFragment initFragment() {
        this.templateListFragment = new TemplateListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("from", this.from);
        TemplateListFragment templateListFragment = this.templateListFragment;
        if (templateListFragment != null) {
            templateListFragment.setArguments(bundle);
        }
        TemplateListFragment templateListFragment2 = this.templateListFragment;
        if (templateListFragment2 != null) {
            templateListFragment2.setOnChooseTemplateListener(this);
        }
        TemplateListFragment templateListFragment3 = this.templateListFragment;
        t.g(templateListFragment3);
        return templateListFragment3;
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onCollapsed() {
        TemplateListFragment templateListFragment = this.templateListFragment;
        if (templateListFragment != null) {
            templateListFragment.hide();
        }
        TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener = this.onChooseTemplateListener;
        if (onChooseTemplateListener != null) {
            onChooseTemplateListener.onDismiss();
        }
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void showContent() {
        TemplateListFragment templateListFragment = this.templateListFragment;
        if (templateListFragment != null) {
            templateListFragment.show();
        }
        super.showContent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$0(ChooseSceneTemplateService this$0) {
        t.j(this$0, "this$0");
        this$0.updateBottomSheet(3);
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void onBottomLayoutCreated(@NotNull View view) {
        t.j(view, "view");
        super.onBottomLayoutCreated(view);
        view.findViewById(R.id.out_area).setOnClickListener(new OnPreventRepeatedClickListener(this) { // from class: com.narvii.scene.service.ChooseSceneTemplateService.onBottomLayoutCreated.1
            {
                super(this);
            }
        });
    }

    @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
    public void onChoose(@NotNull TemplateConfig template) {
        t.j(template, "template");
        Log.d(TAG, "choose template >>>  url = " + template.coverImageUrl);
        TemplateListFragment.OnChooseTemplateListener onChooseTemplateListener = this.onChooseTemplateListener;
        if (onChooseTemplateListener != null) {
            onChooseTemplateListener.onChoose(template);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        dismiss();
    }

    @Override // com.narvii.scene.TemplateListFragment.OnChooseTemplateListener
    public void onDismiss() {
        dismiss();
    }

    @Override // com.narvii.scene.service.BaseBottomSheetBehaviorService
    public void show() {
        if (getRootView() == null) {
            init();
            TemplateListFragment templateListFragment = this.templateListFragment;
            if (templateListFragment != null) {
                templateListFragment.show();
            }
            updateRootView(true);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.service.b
                @Override // java.lang.Runnable
                public final void run() {
                    ChooseSceneTemplateService.show$lambda$0(this.f2675a);
                }
            }, 100L);
            return;
        }
        showContent();
    }
}
