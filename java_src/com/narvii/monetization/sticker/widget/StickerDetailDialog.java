package com.narvii.monetization.sticker.widget;

import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.model.Sticker;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes3.dex */
public class StickerDetailDialog extends AlertDialog implements View.OnClickListener {
    View btnFlag;
    NVContext context;
    Sticker sticker;
    StickerImageView stickerImageView;
    TextView tvStickerName;

    public StickerDetailDialog(NVContext nVContext) {
        super(nVContext.getContext());
        this.context = nVContext;
        setContentView(R.layout.dialog_sticker_detail);
        this.stickerImageView = (StickerImageView) findViewById(R.id.sticker_image);
        this.tvStickerName = (TextView) findViewById(R.id.stick_name);
        this.btnFlag = findViewById(R.id.flag);
        this.btnFlag.setOnClickListener(this);
        View viewFindViewById = findViewById(R.id.root);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
    }

    public void setSticker(Sticker sticker, boolean z) {
        if (sticker == null) {
            return;
        }
        this.sticker = sticker;
        View view = this.btnFlag;
        if (view != null) {
            view.setVisibility(z ? 8 : 0);
        }
        StickerImageView stickerImageView = this.stickerImageView;
        if (stickerImageView != null) {
            stickerImageView.setSticker(sticker);
        }
        TextView textView = this.tvStickerName;
        if (textView != null) {
            textView.setText(sticker.name);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.flag) {
            new FlagReportOptionDialog.Builder(this.context).nvObject(this.sticker).build().show();
            dismiss();
        } else {
            if (id != R.id.root) {
                return;
            }
            dismiss();
        }
    }
}
