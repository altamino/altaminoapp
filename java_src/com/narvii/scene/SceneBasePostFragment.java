package com.narvii.scene;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.io.File;

/* loaded from: classes3.dex */
public abstract class SceneBasePostFragment extends NVFragment implements FragmentOnBackListener {
    public static TmpValue<Bitmap> BACKGROUND = new TmpValue<>();
    private ImageView deleteIV;
    protected File draftDir;
    protected int frameHeight;

    protected abstract boolean canSubmit();

    protected abstract void doSubmit();

    protected abstract int getPostObjectType();

    protected abstract boolean isContentEmpty();

    protected abstract boolean isModified();

    protected void onFrameHeightChanged() {
    }

    protected void onPostDeleted() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        getActivity().getWindow().setSoftInputMode(19);
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        }
        File file = new File(getStringParam("outputFileDir"));
        file.mkdirs();
        this.draftDir = new File(file, SceneConstant.SCENE_INTERMEDIATE_FILE);
        this.draftDir.mkdirs();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i = R.string.post_submit;
        menu.add(0, i, 0, i).setIcon(new ActionBarIcon(getContext(), com.narvii.lib.R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        boolean zCanSubmit = canSubmit();
        menu.findItem(R.string.post_submit).setEnabled(zCanSubmit);
        menu.findItem(R.string.post_submit).getIcon().setAlpha(zCanSubmit ? 255 : 130);
        if (this.deleteIV != null) {
            boolean zIsContentEmpty = isContentEmpty();
            this.deleteIV.setImageResource(zIsContentEmpty ? R.drawable.trash_bin_disable : R.drawable.trash_bin_enable);
            this.deleteIV.setEnabled(!zIsContentEmpty);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        final NVImageView nVImageView = (NVImageView) view.findViewById(R.id.bg);
        final FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.delete_container);
        if (nVImageView != null) {
            nVImageView.setShowPressedMask(false);
            if (getBooleanParam("editRemote")) {
                nVImageView.setImageUrl(getStringParam("coverImageUrl"));
            } else {
                nVImageView.setImageBitmap(BACKGROUND.getAndRemove());
            }
            nVImageView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.scene.SceneBasePostFragment.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    Utils.post(new Runnable() { // from class: com.narvii.scene.SceneBasePostFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewGroup.LayoutParams layoutParams;
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            int iMax = Math.max(SceneBasePostFragment.this.frameHeight, nVImageView.getHeight());
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            SceneBasePostFragment sceneBasePostFragment = SceneBasePostFragment.this;
                            if (iMax != sceneBasePostFragment.frameHeight) {
                                sceneBasePostFragment.frameHeight = iMax;
                                ViewGroup.LayoutParams layoutParams2 = nVImageView.getLayoutParams();
                                if (layoutParams2 != null) {
                                    AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                    layoutParams2.height = SceneBasePostFragment.this.frameHeight;
                                    nVImageView.setLayoutParams(layoutParams2);
                                }
                                FrameLayout frameLayout2 = frameLayout;
                                if (frameLayout2 != null && (layoutParams = frameLayout2.getLayoutParams()) != null) {
                                    AnonymousClass1 anonymousClass14 = AnonymousClass1.this;
                                    layoutParams.height = SceneBasePostFragment.this.frameHeight;
                                    frameLayout.setLayoutParams(layoutParams);
                                }
                                SceneBasePostFragment.this.onFrameHeightChanged();
                            }
                        }
                    });
                }
            });
        }
        this.deleteIV = (ImageView) view.findViewById(R.id.delete_iv);
        ImageView imageView = this.deleteIV;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.SceneBasePostFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(SceneBasePostFragment.this.getContext());
                    if (SceneBasePostFragment.this.getPostObjectType() == 4) {
                        aCMAlertDialog.setMessage(R.string.delete_poll_dialog_text);
                    } else if (SceneBasePostFragment.this.getPostObjectType() == 6) {
                        aCMAlertDialog.setMessage(R.string.delete_quiz_dialog_text);
                    }
                    aCMAlertDialog.addButton(R.string.cancel, null);
                    aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.scene.SceneBasePostFragment.2.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            SceneBasePostFragment.this.onPostDeleted();
                        }
                    });
                    aCMAlertDialog.show();
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.post_submit) {
            doSubmit();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (!isModified()) {
            return false;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.discard_changes, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.SceneBasePostFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i != 0) {
                    return;
                }
                SceneBasePostFragment.this.setResult(0);
                SceneBasePostFragment.this.finish();
            }
        });
        actionSheetDialog.show();
        return true;
    }
}
