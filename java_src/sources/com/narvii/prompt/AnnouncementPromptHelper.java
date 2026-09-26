package com.narvii.prompt;

import android.content.DialogInterface;
import com.narvii.amino.PromptShowListener;
import com.narvii.announcement.AnnouncementCoverDialog;
import com.narvii.app.NVContext;
import com.narvii.master.BottomDrawerHelper;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementPromptHelper extends PromptHelper implements BottomDrawerHelper.OnStatusChangeListener {
    BottomDrawerHelper bottomDrawerHelper;
    private AnnouncementCoverDialog dialog;

    @Override // com.narvii.prompt.PromptHelper
    public void onPostShow() {
    }

    @Override // com.narvii.master.BottomDrawerHelper.OnStatusChangeListener
    public void onStatusChanged(int i10, final Object obj) {
        if (i10 != 1) {
            if (i10 == -1) {
                whenNotBlocking();
                return;
            }
            return;
        }
        if (!(obj instanceof Blog)) {
            whenNotBlocking();
            return;
        }
        Blog blog = (Blog) obj;
        Media extraCoverMedia = blog.getExtraCoverMedia();
        if (extraCoverMedia == null || extraCoverMedia.url == null) {
            whenNotBlocking();
        } else {
            if (!this.bottomDrawerHelper.shouldShowAnnouncement(blog)) {
                whenNotBlocking();
                return;
            }
            AnnouncementCoverDialog announcementCoverDialog = new AnnouncementCoverDialog(this.nvContext, blog, new NVImageView.OnImageChangedListener() { // from class: com.narvii.prompt.AnnouncementPromptHelper.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i11, Media media) {
                    if (i11 == 4) {
                        AnnouncementPromptHelper.this.dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.AnnouncementPromptHelper.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    if (!AnnouncementPromptHelper.this.bottomDrawerHelper.shouldShowAnnouncement((Blog) obj)) {
                                        AnnouncementPromptHelper.this.whenNotBlocking();
                                        return;
                                    }
                                    PromptShowListener promptShowListener = AnnouncementPromptHelper.this.promptShowListener;
                                    if (promptShowListener != null) {
                                        promptShowListener.setPromptShown(4096);
                                    }
                                    AnnouncementPromptHelper.this.dialog.show();
                                } catch (Exception e) {
                                    AnnouncementPromptHelper.this.whenNotBlocking();
                                    Log.e("announcement prompt fail", e);
                                }
                            }
                        });
                    } else if (i11 == 2) {
                        AnnouncementPromptHelper.this.whenNotBlocking();
                    }
                }
            });
            this.dialog = announcementCoverDialog;
            announcementCoverDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.AnnouncementPromptHelper.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    AnnouncementPromptHelper.this.whenNotBlocking();
                }
            });
        }
    }

    @Override // com.narvii.prompt.PromptHelper
    public void doTryShow() {
        this.bottomDrawerHelper.checkAnnouncement();
    }

    public AnnouncementPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        this.bottomDrawerHelper = new BottomDrawerHelper(nVContext, this);
    }
}
