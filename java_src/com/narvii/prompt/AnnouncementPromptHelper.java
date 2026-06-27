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

/* loaded from: classes3.dex */
public class AnnouncementPromptHelper extends PromptHelper implements BottomDrawerHelper.OnStatusChangeListener {
    BottomDrawerHelper bottomDrawerHelper;
    private AnnouncementCoverDialog dialog;

    @Override // com.narvii.prompt.PromptHelper
    public void onPostShow() {
    }

    public AnnouncementPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
        this.bottomDrawerHelper = new BottomDrawerHelper(nVContext, this);
    }

    @Override // com.narvii.prompt.PromptHelper
    public void doTryShow() {
        this.bottomDrawerHelper.checkAnnouncement();
    }

    @Override // com.narvii.master.BottomDrawerHelper.OnStatusChangeListener
    public void onStatusChanged(int i, final Object obj) {
        if (i != 1) {
            if (i == -1) {
                whenNotBlocking();
            }
        } else {
            if (obj instanceof Blog) {
                Blog blog = (Blog) obj;
                Media extraCoverMedia = blog.getExtraCoverMedia();
                if (extraCoverMedia == null || extraCoverMedia.url == null) {
                    whenNotBlocking();
                    return;
                } else if (this.bottomDrawerHelper.shouldShowAnnouncement(blog)) {
                    this.dialog = new AnnouncementCoverDialog(this.nvContext, blog, new NVImageView.OnImageChangedListener() { // from class: com.narvii.prompt.AnnouncementPromptHelper.1
                        @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                        public void onImageChanged(NVImageView nVImageView, int i2, Media media) {
                            if (i2 == 4) {
                                AnnouncementPromptHelper.this.dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.AnnouncementPromptHelper.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            if (AnnouncementPromptHelper.this.bottomDrawerHelper.shouldShowAnnouncement((Blog) obj)) {
                                                if (AnnouncementPromptHelper.this.promptShowListener != null) {
                                                    AnnouncementPromptHelper.this.promptShowListener.setPromptShown(4096);
                                                }
                                                AnnouncementPromptHelper.this.dialog.show();
                                                return;
                                            }
                                            AnnouncementPromptHelper.this.whenNotBlocking();
                                        } catch (Exception e) {
                                            AnnouncementPromptHelper.this.whenNotBlocking();
                                            Log.e("announcement prompt fail", e);
                                        }
                                    }
                                });
                            } else if (i2 == 2) {
                                AnnouncementPromptHelper.this.whenNotBlocking();
                            }
                        }
                    });
                    this.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.AnnouncementPromptHelper.2
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            AnnouncementPromptHelper.this.whenNotBlocking();
                        }
                    });
                    return;
                } else {
                    whenNotBlocking();
                    return;
                }
            }
            whenNotBlocking();
        }
    }
}
