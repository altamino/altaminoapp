package com.narvii.master;

import android.os.Build;
import android.os.Bundle;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.util.PackageUtils;

/* loaded from: classes3.dex */
public class CreateCommunityFragment extends NVFragment implements View.OnClickListener {
    View btnDownLoadAcm;
    int index = 0;
    PackageUtils packageUtils;
    TextView tvTitle;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.packageUtils = new PackageUtils(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View viewInflate = layoutInflater.inflate(R.layout.amino_template_picker_item, viewGroup, false);
        viewInflate.findViewById(R.id.container).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.CreateCommunityFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Build.VERSION.SDK_INT >= 19) {
                    TransitionManager transitionManager = new TransitionManager();
                    Transition transitionInflateTransition = TransitionInflater.from(CreateCommunityFragment.this.getContext()).inflateTransition(R.transition.my_transition);
                    ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(R.id.container);
                    Scene sceneForLayout = Scene.getSceneForLayout(viewGroup2, R.layout.amino_template_picker_item_collapse, CreateCommunityFragment.this.getContext());
                    Scene sceneForLayout2 = Scene.getSceneForLayout(viewGroup2, R.layout.amino_template_picker_item_expand, CreateCommunityFragment.this.getContext());
                    transitionManager.setTransition(sceneForLayout, transitionInflateTransition);
                    transitionManager.setTransition(sceneForLayout2, transitionInflateTransition);
                    if (CreateCommunityFragment.this.index % 2 != 0) {
                        sceneForLayout2 = sceneForLayout;
                    }
                    TransitionManager.go(sceneForLayout2);
                    CreateCommunityFragment.this.index++;
                }
            }
        });
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
    }

    private void checkAcmInstall() {
        View view = this.btnDownLoadAcm;
        if (view == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(R.id.button_text);
        if (this.packageUtils.installedAcm()) {
            textView.setText(getString(R.string.create_community_open));
        } else {
            textView.setText(getString(R.string.create_community_download));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_create_community) {
            if (this.packageUtils.installedAcm()) {
                this.packageUtils.launchAcm();
            } else {
                this.packageUtils.downloadAcm();
            }
        }
    }
}
