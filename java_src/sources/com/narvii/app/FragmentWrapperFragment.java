package com.narvii.app;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class FragmentWrapperFragment extends NVFragment {
    private static final int REQUEST_WRAP = 63;
    private boolean loaded;
    private View loadingView;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 63) {
            super.onActivityResult(i10, i11, intent);
        } else {
            setResult(i11, intent);
            finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_wrapper, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        if (bundle == null) {
            z6 = false;
        } else {
            z6 = bundle.getBoolean("loaded");
        }
        this.loaded = z6;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("loaded", this.loaded);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(android.R.id.progress);
        this.loadingView = viewFindViewById;
        if (this.loaded) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        viewFindViewById.setVisibility(i10);
    }

    public void setWrapFragment(Intent intent) {
        if (isEmbedFragment()) {
            if (intent.getComponent() != null && !TextUtils.isEmpty(intent.getStringExtra("fragment"))) {
                String stringExtra = intent.getStringExtra("fragment");
                try {
                    getChildFragmentManager().q().c(R.id.wrapper_frame, (Fragment) getContext().getClassLoader().loadClass(stringExtra).newInstance(), "wrap").j();
                    this.loaded = true;
                    this.loadingView.setVisibility(8);
                    return;
                } catch (Exception e) {
                    Log.e("unable to init wrap fragment " + stringExtra, e);
                    return;
                }
            }
            Log.e("unable to wrap fragment intent " + intent);
            return;
        }
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 63);
        getActivity().overridePendingTransition(0, 0);
    }
}
