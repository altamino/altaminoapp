package com.narvii.sharedfolder;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.media.MediaPickerFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MyUploadsSelectFragment extends MyUploadsBaseFragment implements NotificationListener {
    public static final String MODE_EDIT = "edit";
    public static final String MODE_PICK_UPLOAD = "pickUpload";
    public static final int REQUEST_SELECT_ALBUM = 1;
    public MergeAdapter mergeAdapter;
    TextView rightTextView;
    private String selectMode;

    /* JADX INFO: renamed from: com.narvii.sharedfolder.MyUploadsSelectFragment$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {

        /* JADX INFO: renamed from: com.narvii.sharedfolder.MyUploadsSelectFragment$3$1, reason: invalid class name */
        class AnonymousClass1 implements DialogInterface.OnClickListener {
            public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivityForResult(p1, p5);
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (i10 == 0) {
                    Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                    intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO);
                    intent.putExtra("fileIdList", JacksonUtils.writeAsString(MyUploadsSelectFragment.this.sharedPhotosAdapter.getSelectedIds()));
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(MyUploadsSelectFragment.this, intent, 1);
                    ((StatisticsService) MyUploadsSelectFragment.this.getService("statistics")).event("Add Shared Folder Media").source("My Uploads").param("From", "My Uploads").userPropInc("Add Shared Folder Media Total");
                    return;
                }
                if (i10 != 1) {
                    return;
                }
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MyUploadsSelectFragment.this.getContext());
                aCMAlertDialog.setMessage(R.string.delete_photos_confirm_message);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.3.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                        myUploadsSelectFragment.sharedFolderHelper.deletePhotos(myUploadsSelectFragment, myUploadsSelectFragment.sharedPhotosAdapter.getSelectedIds(), new Callback() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.3.1.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                if (MyUploadsSelectFragment.this.getActivity() == null) {
                                    return;
                                }
                                MyUploadsSelectFragment.this.getActivity().finish();
                            }
                        });
                    }
                }, SupportMenu.CATEGORY_MASK);
                aCMAlertDialog.show();
            }

            AnonymousClass1() {
            }
        }

        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharedPhotosAdapter sharedPhotosAdapter = MyUploadsSelectFragment.this.sharedPhotosAdapter;
            if (sharedPhotosAdapter == null) {
                return;
            }
            if (sharedPhotosAdapter.getSelectedIds().size() == 0) {
                MyUploadsSelectFragment.this.finish();
                return;
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(MyUploadsSelectFragment.this.getContext());
            actionSheetDialog.addItem(R.string.add_to_album, false);
            actionSheetDialog.addItem(R.string.delete_selected_photos, true);
            actionSheetDialog.setOnClickListener(new AnonymousClass1());
            actionSheetDialog.show();
        }
    }

    @Override // com.narvii.sharedfolder.MyUploadsBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 1 && i11 == -1) {
            finish();
        }
        super.onActivityResult(i10, i11, intent);
    }

    private boolean allowShowUpload() {
        return "pickUpload".equals(this.selectMode);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment
    protected void addPhotos(final String str) {
        if ("pickUpload".equals(this.selectMode)) {
            this.sharedFolderHelper.checkUploadPhotoEligible(new Callback() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.2
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    MyUploadsSelectFragment.this.mediaPickerFragment.pickCallback = MediaPickCallbackManager.SHARED_PHOTO_PICK;
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("showAddAlbumAlert", Boolean.FALSE);
                    map.put(ExternalPostPreviewFragment.SOURCE, str);
                    MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                    MediaPickerFragment mediaPickerFragment = myUploadsSelectFragment.mediaPickerFragment;
                    mediaPickerFragment.pickCallbackParams = map;
                    mediaPickerFragment.pickMedia(myUploadsSelectFragment.dir, (Bundle) null, 0, 25);
                }
            });
        } else {
            super.addPhotos(str);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.mergeAdapter.addAdapter(staticViewAdapter);
        if (this.sharedFolderHelper.canUploadPhoto() && allowShowUpload()) {
            this.mergeAdapter.addAdapter(new MyUploadsBaseFragment.UploadAdapter(this));
        }
        this.mergeAdapter.addAdapter(getPhotoAdapter(true), true);
        this.sharedPhotosAdapter.setOnSelectedCountChangeListener(new SharedPhotosAdapter.OnSelectedCountChangeListener() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.1
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter.OnSelectedCountChangeListener
            public void onSelectedChanged(int i10) {
                String str;
                TextView textView = MyUploadsSelectFragment.this.rightTextView;
                if (textView != null) {
                    StringBuilder sb = new StringBuilder();
                    MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                    sb.append(myUploadsSelectFragment.getString(myUploadsSelectFragment.getRightActionStringId()));
                    if (i10 > 0) {
                        str = "(" + i10 + ")";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    textView.setText(sb.toString());
                    MyUploadsSelectFragment.this.rightTextView.setEnabled(i10 > 0);
                }
            }
        });
        return this.mergeAdapter;
    }

    public int getRightActionStringId() {
        String str = this.selectMode;
        str.hashCode();
        return !str.equals("pickUpload") ? R.string.next : R.string.done;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof PhotoUpload) && this.sharedPhotosAdapter != null && "pickUpload".equals(this.selectMode)) {
            this.sharedPhotosAdapter.setSelectedIds(((PhotoUpload) notification.obj).fileIdList);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            String str = this.selectMode;
            str.hashCode();
            if (!str.equals("pickUpload")) {
                if (str.equals("edit")) {
                    ((NVActivity) activity).setActionBarRightView(getRightActionStringId(), new AnonymousClass3());
                }
            } else {
                ((NVActivity) activity).setActionBarRightView(getRightActionStringId(), new View.OnClickListener() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                        if (myUploadsSelectFragment.sharedPhotosAdapter == null) {
                            return;
                        }
                        myUploadsSelectFragment.sharedFolderHelper.addPhotosToAlbum(myUploadsSelectFragment.getStringParam("toAlbumId"), MyUploadsSelectFragment.this.sharedPhotosAdapter.getSelectedIds(), new Callback() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.4.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                MyUploadsSelectFragment.this.finish();
                            }
                        });
                    }
                });
            }
            NVActivity nVActivity = (NVActivity) activity;
            nVActivity.setActionBarLeftTextView(R.string.cancel);
            this.rightTextView = nVActivity.getRightTextView();
            nVActivity.setRightViewEnabled(false);
        }
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectMode = getStringParam("selectMode");
    }
}
