package com.narvii.scene;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
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

/* JADX INFO: loaded from: classes.dex */
public abstract class SceneBasePostFragment extends NVFragment implements FragmentOnBackListener {
    public static TmpValue<Bitmap> BACKGROUND = new TmpValue<>();
    private ImageView deleteIV;
    protected File draftDir;
    protected int frameHeight;

    protected abstract boolean canSubmit();

    protected abstract void doSubmit();

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    protected abstract int getPostObjectType();

    protected abstract boolean isContentEmpty();

    protected abstract boolean isModified();

    protected void onFrameHeightChanged() {
    }

    protected void onPostDeleted() {
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (isModified()) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.discard_changes, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.SceneBasePostFragment.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 != 0) {
                        return;
                    }
                    SceneBasePostFragment.this.setResult(0);
                    SceneBasePostFragment.this.finish();
                }
            });
            actionSheetDialog.show();
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        getActivity().getWindow().setSoftInputMode(19);
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        }
        File file = new File(getStringParam("outputFileDir"));
        file.mkdirs();
        File file2 = new File(file, SceneConstant.SCENE_INTERMEDIATE_FILE);
        this.draftDir = file2;
        file2.mkdirs();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i10 = R.string.post_submit;
        menu.add(0, i10, 0, i10).setIcon(new ActionBarIcon(getContext(), com.narvii.lib.R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.post_submit) {
            doSubmit();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        int i10;
        int i11;
        super.onPrepareOptionsMenu(menu);
        boolean zCanSubmit = canSubmit();
        int i12 = R.string.post_submit;
        menu.findItem(i12).setEnabled(zCanSubmit);
        Drawable icon = menu.findItem(i12).getIcon();
        if (zCanSubmit) {
            i10 = 255;
        } else {
            i10 = 130;
        }
        icon.setAlpha(i10);
        if (this.deleteIV != null) {
            boolean zIsContentEmpty = isContentEmpty();
            ImageView imageView = this.deleteIV;
            if (zIsContentEmpty) {
                i11 = R.drawable.trash_bin_disable;
            } else {
                i11 = R.drawable.trash_bin_enable;
            }
            imageView.setImageResource(i11);
            this.deleteIV.setEnabled(!zIsContentEmpty);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
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
                            AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                            SceneBasePostFragment sceneBasePostFragment = SceneBasePostFragment.this;
                            if (iMax != sceneBasePostFragment.frameHeight) {
                                sceneBasePostFragment.frameHeight = iMax;
                                ViewGroup.LayoutParams layoutParams2 = nVImageView.getLayoutParams();
                                if (layoutParams2 != null) {
                                    AnonymousClass1 anonymousClass3 = AnonymousClass1.this;
                                    layoutParams2.height = SceneBasePostFragment.this.frameHeight;
                                    nVImageView.setLayoutParams(layoutParams2);
                                }
                                FrameLayout frameLayout2 = frameLayout;
                                if (frameLayout2 != null && (layoutParams = frameLayout2.getLayoutParams()) != null) {
                                    AnonymousClass1 anonymousClass4 = AnonymousClass1.this;
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
        ImageView imageView = (ImageView) view.findViewById(R.id.delete_iv);
        this.deleteIV = imageView;
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
}
