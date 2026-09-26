package com.narvii.video.attachment.caption;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public class CaptionEditTextFragment extends NVFragment implements CaptionColorRecyclerView.OnColorSelectedListener, FragmentOnBackListener {
    public static TmpValue<Bitmap> BACKGROUND = new TmpValue<>();
    int color;
    CaptionColorRecyclerView colorRecyclerView;
    EditText editText;
    int frameHeight;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDoneButton() {
        EditText editText = this.editText;
        boolean z6 = (editText == null || TextUtils.isEmpty(editText.getText().toString().trim())) ? false : true;
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setRightViewEnabled(z6);
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        EditText editText = this.editText;
        if (editText == null) {
            return false;
        }
        SoftKeyboard.hideSoftKeyboard(editText);
        try {
            Thread.sleep(50L);
            return false;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.narvii.video.attachment.caption.CaptionColorRecyclerView.OnColorSelectedListener
    public void onColorSelected(int i10, boolean z6) {
        this.color = i10;
        EditText editText = this.editText;
        if (editText != null) {
            editText.setTextColor(i10);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        setTitle("");
        this.color = ColorUtils.o(getIntParam("color", -1), 255);
        getActivity().getWindow().setSoftInputMode(20);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_text_editor, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        final NVActivity nVActivity = (NVActivity) getActivity();
        nVActivity.setActionBarLeftTextView(com.narvii.lib.R.string.cancel);
        nVActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.video.attachment.caption.CaptionEditTextFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CaptionEditTextFragment.this.editText == null) {
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("text", CaptionEditTextFragment.this.editText.getText().toString().trim());
                intent.putExtra("color", CaptionEditTextFragment.this.color);
                intent.putExtra("isNew", CaptionEditTextFragment.this.getBooleanParam("isNew"));
                SoftKeyboard.hideSoftKeyboard(CaptionEditTextFragment.this.editText);
                nVActivity.setResult(-1, intent);
                nVActivity.finish();
            }
        });
        updateDoneButton();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        EditText editText = (EditText) view.findViewById(R.id.edit_text);
        this.editText = editText;
        editText.setText(getStringParam("text"));
        this.editText.setTextColor(this.color);
        EditText editText2 = this.editText;
        editText2.setSelection(editText2.getText().length());
        this.editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.video.attachment.caption.CaptionEditTextFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CaptionEditTextFragment.this.updateDoneButton();
            }
        });
        CaptionColorRecyclerView captionColorRecyclerView = (CaptionColorRecyclerView) view.findViewById(R.id.color_picker);
        this.colorRecyclerView = captionColorRecyclerView;
        captionColorRecyclerView.setCurrentSelectColor(this.color);
        this.colorRecyclerView.setOnColorSelectedListener(this);
        final ImageView imageView = (ImageView) view.findViewById(R.id.bg);
        imageView.setImageBitmap(BACKGROUND.getAndRemove());
        imageView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.video.attachment.caption.CaptionEditTextFragment.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Utils.post(new Runnable() { // from class: com.narvii.video.attachment.caption.CaptionEditTextFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        int iMax = Math.max(CaptionEditTextFragment.this.frameHeight, imageView.getHeight());
                        AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                        CaptionEditTextFragment captionEditTextFragment = CaptionEditTextFragment.this;
                        if (iMax != captionEditTextFragment.frameHeight) {
                            captionEditTextFragment.frameHeight = iMax;
                            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                            if (layoutParams != null) {
                                AnonymousClass3 anonymousClass5 = AnonymousClass3.this;
                                layoutParams.height = CaptionEditTextFragment.this.frameHeight;
                                imageView.setLayoutParams(layoutParams);
                            }
                        }
                    }
                });
            }
        });
    }
}
