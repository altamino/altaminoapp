package com.narvii.master.theme;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.master.MasterAppearanceView;
import com.narvii.model.Media;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class MasterThemeFragment extends NVFragment implements MasterThemeListener {

    @Nullable
    private MasterAppearanceView masterBackgroundView;
    private MasterThemeService masterThemeService;

    @Nullable
    private q<? super ImageView, ? super View, ? super Integer, l0> onBackgroundChangedCallback;

    @Nullable
    private View overlay;

    @Nullable
    private PreferencesHelper prefsHelper;

    private final void updateMasterAppearance(List<? extends Media> list, final Integer num) {
        MasterAppearanceView masterAppearanceView;
        if (list == null) {
            PreferencesHelper preferencesHelper = this.prefsHelper;
            list = preferencesHelper != null ? preferencesHelper.getMasterMediaList() : null;
        }
        if (num == null) {
            PreferencesHelper preferencesHelper2 = this.prefsHelper;
            num = preferencesHelper2 != null ? Integer.valueOf(preferencesHelper2.getMasterThemeColor()) : null;
        }
        if (this.onBackgroundChangedCallback != null && (masterAppearanceView = this.masterBackgroundView) != null) {
            masterAppearanceView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.master.theme.a
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public final void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                    MasterThemeFragment.updateMasterAppearance$lambda$0(this.f2427a, num, nVImageView, i10, media);
                }
            });
        }
        MasterAppearanceView masterAppearanceView2 = this.masterBackgroundView;
        if (masterAppearanceView2 != null) {
            masterAppearanceView2.setImageMedia(list != null ? list.get(0) : null);
        }
    }

    @Nullable
    public final q<ImageView, View, Integer, l0> getOnBackgroundChangedCallback() {
        return this.onBackgroundChangedCallback;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public final void setOnBackgroundChangedCallback(@Nullable q<? super ImageView, ? super View, ? super Integer, l0> qVar) {
        this.onBackgroundChangedCallback = qVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void updateMasterAppearance$default(MasterThemeFragment masterThemeFragment, List list, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = null;
        }
        if ((i10 & 2) != 0) {
            num = null;
        }
        masterThemeFragment.updateMasterAppearance(list, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateMasterAppearance$lambda$0(MasterThemeFragment this$0, Integer num, NVImageView nVImageView, int i10, Media media) {
        q<? super ImageView, ? super View, ? super Integer, l0> qVar;
        t.j(this$0, "this$0");
        if (i10 != 4 || nVImageView.getDrawable() == null || (qVar = this$0.onBackgroundChangedCallback) == null) {
            return;
        }
        t.g(nVImageView);
        qVar.invoke(nVImageView, this$0.overlay, num);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_master_theme, viewGroup, false);
    }

    @Override // com.narvii.master.theme.MasterThemeListener
    public void onMasterThemeChanged(@Nullable List<? extends Media> list, @Nullable Integer num) {
        PreferencesHelper preferencesHelper = this.prefsHelper;
        List<Media> masterMediaList = preferencesHelper != null ? preferencesHelper.getMasterMediaList() : null;
        PreferencesHelper preferencesHelper2 = this.prefsHelper;
        Integer numValueOf = preferencesHelper2 != null ? Integer.valueOf(preferencesHelper2.getMasterThemeColor()) : null;
        if (Utils.isEqualsNotNull(masterMediaList, list) && Utils.isEqualsNotNull(num, numValueOf)) {
            updateMasterAppearance$default(this, null, null, 3, null);
            return;
        }
        PreferencesHelper preferencesHelper3 = this.prefsHelper;
        if (preferencesHelper3 != null) {
            preferencesHelper3.setMasterThemeMediaList(list);
        }
        PreferencesHelper preferencesHelper4 = this.prefsHelper;
        if (preferencesHelper4 != null) {
            t.g(num);
            preferencesHelper4.setKeyMasterThemeColor(num.intValue());
        }
        updateMasterAppearance(list, num);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.master_background);
        t.h(viewFindViewById, "null cannot be cast to non-null type com.narvii.master.MasterAppearanceView");
        this.masterBackgroundView = (MasterAppearanceView) viewFindViewById;
        this.overlay = view.findViewById(R.id.master_background_overlay);
        updateMasterAppearance$default(this, null, null, 3, null);
        MasterThemeService masterThemeService = this.masterThemeService;
        if (masterThemeService == null) {
            t.B("masterThemeService");
            masterThemeService = null;
        }
        masterThemeService.registerListener(this);
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("overlayColor")) : null;
        if (numValueOf != null) {
            View view2 = this.overlay;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.overlay;
            if (view3 != null) {
                view3.setBackgroundColor(numValueOf.intValue());
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("masterTheme");
        t.i(service, "getService(...)");
        this.masterThemeService = (MasterThemeService) service;
        this.prefsHelper = new PreferencesHelper(this);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MasterThemeService masterThemeService = this.masterThemeService;
        if (masterThemeService == null) {
            t.B("masterThemeService");
            masterThemeService = null;
        }
        masterThemeService.unregisterListener(this);
    }
}
