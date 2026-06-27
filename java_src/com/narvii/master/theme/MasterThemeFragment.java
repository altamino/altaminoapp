package com.narvii.master.theme;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.master.MasterAppearanceView;
import com.narvii.model.Media;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MasterThemeFragment.kt */
/* loaded from: classes3.dex */
public final class MasterThemeFragment extends NVFragment implements MasterThemeListener {
    private HashMap _$_findViewCache;
    private MasterAppearanceView masterBackgroundView;
    private MasterThemeService masterThemeService;
    private Function3<? super ImageView, ? super View, ? super Integer, Unit> onBackgroundChangedCallback;
    private View overlay;
    private PreferencesHelper prefsHelper;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final Function3<ImageView, View, Integer, Unit> getOnBackgroundChangedCallback() {
        return this.onBackgroundChangedCallback;
    }

    public final void setOnBackgroundChangedCallback(Function3<? super ImageView, ? super View, ? super Integer, Unit> function3) {
        this.onBackgroundChangedCallback = function3;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("masterTheme");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"masterTheme\")");
        this.masterThemeService = (MasterThemeService) service;
        this.prefsHelper = new PreferencesHelper(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_master_theme, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.master_background);
        if (viewFindViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.MasterAppearanceView");
        }
        this.masterBackgroundView = (MasterAppearanceView) viewFindViewById;
        this.overlay = view.findViewById(R.id.master_background_overlay);
        updateMasterAppearance$default(this, null, null, 3, null);
        if (this.masterThemeService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("masterThemeService");
            throw null;
        }
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

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MasterThemeService masterThemeService = this.masterThemeService;
        if (masterThemeService != null) {
            masterThemeService.unregisterListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("masterThemeService");
            throw null;
        }
    }

    @Override // com.narvii.master.theme.MasterThemeListener
    public void onMasterThemeChanged(List<? extends Media> list, Integer num) {
        PreferencesHelper preferencesHelper = this.prefsHelper;
        List<Media> masterMediaList = preferencesHelper != null ? preferencesHelper.getMasterMediaList() : null;
        PreferencesHelper preferencesHelper2 = this.prefsHelper;
        Integer numValueOf = preferencesHelper2 != null ? Integer.valueOf(preferencesHelper2.getMasterThemeColor()) : null;
        if (!Utils.isEqualsNotNull(masterMediaList, list) || !Utils.isEqualsNotNull(num, numValueOf)) {
            PreferencesHelper preferencesHelper3 = this.prefsHelper;
            if (preferencesHelper3 != null) {
                preferencesHelper3.setMasterThemeMediaList(list);
            }
            PreferencesHelper preferencesHelper4 = this.prefsHelper;
            if (preferencesHelper4 != null) {
                if (num == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                preferencesHelper4.setKeyMasterThemeColor(num.intValue());
            }
            updateMasterAppearance(list, num);
            return;
        }
        updateMasterAppearance$default(this, null, null, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void updateMasterAppearance$default(MasterThemeFragment masterThemeFragment, List list, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            num = null;
        }
        masterThemeFragment.updateMasterAppearance(list, num);
    }

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
            masterAppearanceView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.master.theme.MasterThemeFragment.updateMasterAppearance.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public final void onImageChanged(NVImageView iv, int i, Media media) {
                    Function3<ImageView, View, Integer, Unit> onBackgroundChangedCallback;
                    if (i == 4) {
                        Intrinsics.checkExpressionValueIsNotNull(iv, "iv");
                        if (iv.getDrawable() == null || (onBackgroundChangedCallback = MasterThemeFragment.this.getOnBackgroundChangedCallback()) == null) {
                            return;
                        }
                        onBackgroundChangedCallback.invoke(iv, MasterThemeFragment.this.overlay, num);
                    }
                }
            });
        }
        MasterAppearanceView masterAppearanceView2 = this.masterBackgroundView;
        if (masterAppearanceView2 != null) {
            masterAppearanceView2.setImageMedia(list != null ? list.get(0) : null);
        }
    }
}
