package com.narvii.video.attachment.caption;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.graphics.ColorUtils;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.ImageView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.mediaeditor.R;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.text.TextUtils;
import com.narvii.video.attachment.caption.CaptionColorRecyclerView;

/* loaded from: classes3.dex */
public class CaptionEditTextFragment extends NVFragment implements CaptionColorRecyclerView.OnColorSelectedListener, FragmentOnBackListener {
    public static TmpValue<Bitmap> BACKGROUND = new TmpValue<>();
    int color;
    CaptionColorRecyclerView colorRecyclerView;
    EditText editText;
    int frameHeight;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        setTitle("");
        this.color = ColorUtils.setAlphaComponent(getIntParam(TtmlNode.ATTR_TTS_COLOR, -1), 255);
        getActivity().getWindow().setSoftInputMode(20);
        super.onCreate(bundle);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_text_editor, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
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
                intent.putExtra(MimeTypes.BASE_TYPE_TEXT, CaptionEditTextFragment.this.editText.getText().toString().trim());
                intent.putExtra(TtmlNode.ATTR_TTS_COLOR, CaptionEditTextFragment.this.color);
                intent.putExtra("isNew", CaptionEditTextFragment.this.getBooleanParam("isNew"));
                SoftKeyboard.hideSoftKeyboard(CaptionEditTextFragment.this.editText);
                nVActivity.setResult(-1, intent);
                nVActivity.finish();
            }
        });
        updateDoneButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDoneButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        EditText editText = this.editText;
        boolean z = (editText == null || TextUtils.isEmpty(editText.getText().toString().trim())) ? false : true;
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setRightViewEnabled(z);
        }
    }

    @Override // com.narvii.video.attachment.caption.CaptionColorRecyclerView.OnColorSelectedListener
    public void onColorSelected(int i, boolean z) {
        this.color = i;
        EditText editText = this.editText;
        if (editText != null) {
            editText.setTextColor(i);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        this.editText = (EditText) view.findViewById(R.id.edit_text);
        this.editText.setText(getStringParam(MimeTypes.BASE_TYPE_TEXT));
        this.editText.setTextColor(this.color);
        EditText editText = this.editText;
        editText.setSelection(editText.getText().length());
        this.editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.video.attachment.caption.CaptionEditTextFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
                CaptionEditTextFragment.this.updateDoneButton();
            }
        });
        this.colorRecyclerView = (CaptionColorRecyclerView) view.findViewById(R.id.color_picker);
        this.colorRecyclerView.setCurrentSelectColor(this.color);
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
                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                        CaptionEditTextFragment captionEditTextFragment = CaptionEditTextFragment.this;
                        if (iMax != captionEditTextFragment.frameHeight) {
                            captionEditTextFragment.frameHeight = iMax;
                            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                            if (layoutParams != null) {
                                AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                                layoutParams.height = CaptionEditTextFragment.this.frameHeight;
                                imageView.setLayoutParams(layoutParams);
                            }
                        }
                    }
                });
            }
        });
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) throws InterruptedException {
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
}
