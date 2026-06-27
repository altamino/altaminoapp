package com.narvii.share;

import android.content.Intent;
import android.net.Uri;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.media.PostMediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.CheckEligibleHelper;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class ShareButtonUploadToShareFolder extends ShareButtonCustomInfo {
    private final Media media;
    private final List<Media> mediaList;

    @Override // com.narvii.share.ShareButtonCustomInfo
    public String getStatSelectionForShare() {
        return "Shared Folder";
    }

    public ShareButtonUploadToShareFolder(NVContext nVContext, Media media, List<Media> list) {
        super(nVContext);
        this.media = media;
        this.mediaList = list;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.share_upload_to_share_folder;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_dialog_upload_to_share_folder;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public void onClick(final SharePayload sharePayload) {
        new CheckEligibleHelper(this.nvContext).checkEligible("shared-folder", "image-upload", new Callback() { // from class: com.narvii.share.ShareButtonUploadToShareFolder.1
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + PostMediaPickerFragment.class.getName()));
                intent.putExtra("list", JacksonUtils.writeAsString(ShareButtonUploadToShareFolder.this.mediaList));
                intent.putExtra("selected", JacksonUtils.writeAsString(ShareButtonUploadToShareFolder.this.media));
                intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, sharePayload.object.id());
                intent.putExtra(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, sharePayload.object.objectType());
                ShareButtonUploadToShareFolder.this.nvContext.getContext().startActivity(intent);
            }
        });
    }
}
