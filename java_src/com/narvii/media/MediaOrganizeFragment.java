package com.narvii.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVArrayAdapter;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.ThumbImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: classes3.dex */
public class MediaOrganizeFragment extends DragSortListFragment<Media> implements FragmentWillFinishListener, MediaPickerFragment.OnResultListener {
    private static Random rnd;
    Adapter adapter;
    Media coverMedia;
    File dir;
    ArrayList<String> existsRefIds;
    int flags;
    MediaPickerFragment picker;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public boolean isPick() {
        return "android.intent.action.PICK".equals(getActivity().getIntent().getAction());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.flags = getIntParam("flags");
        if (bundle == null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
            MediaPickerFragment mediaPickerFragment = new MediaPickerFragment();
            this.picker = mediaPickerFragment;
            fragmentTransactionBeginTransaction.add(mediaPickerFragment, "picker").commit();
        } else {
            this.picker = (MediaPickerFragment) getFragmentManager().findFragmentByTag("picker");
        }
        this.picker.addOnResultListener(this);
        this.dir = new File(getStringParam("dir"));
        setTitle(isPick() ? R.string.post_insert_image : R.string.post_images);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.picker;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentCoverMediaIndex() {
        Adapter adapter;
        List<Media> list;
        if (this.coverMedia == null || (adapter = this.adapter) == null || (list = adapter.getList()) == null) {
            return -1;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (isCoverMedia(list.get(i))) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter<Media> createAdapter(Bundle bundle) {
        ArrayList listAs;
        int intParam = getIntParam("coverMediaIndex", -1);
        if (bundle == null) {
            listAs = JacksonUtils.readListAs(getStringParam("mediaList"), Media.class);
            if (intParam >= 0 && intParam < listAs.size()) {
                this.coverMedia = (Media) listAs.get(intParam);
            }
        } else {
            listAs = null;
        }
        this.adapter = new Adapter(listAs);
        if (isPick()) {
            this.existsRefIds = JacksonUtils.readListAs(getStringParam("existsRefIds"), String.class);
        }
        return this.adapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (isPick()) {
            View viewInflate = getLayoutInflater(null).inflate(R.layout.media_insert_all_item, (ViewGroup) getListView(), false);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MediaOrganizeFragment.this.pickAllAndReturn();
                }
            });
            listView.addHeaderView(viewInflate, null, true);
        }
        View viewInflate2 = getLayoutInflater(null).inflate(R.layout.media_add_more_list_item, (ViewGroup) getListView(), false);
        viewInflate2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intParam = MediaOrganizeFragment.this.getIntParam("maximum", 50);
                if (intParam > 0 && MediaOrganizeFragment.this.adapter.getList().size() >= intParam) {
                    NVToast.makeText(MediaOrganizeFragment.this.getContext(), MediaOrganizeFragment.this.getString(R.string.media_exceed_limit, Integer.valueOf(intParam)), 0).show();
                } else if (MediaOrganizeFragment.this.isPick()) {
                    MediaOrganizeFragment mediaOrganizeFragment = MediaOrganizeFragment.this;
                    mediaOrganizeFragment.picker.pickMedia(mediaOrganizeFragment.dir, (Bundle) null, mediaOrganizeFragment.flags | 4, 0);
                } else {
                    MediaOrganizeFragment mediaOrganizeFragment2 = MediaOrganizeFragment.this;
                    mediaOrganizeFragment2.picker.pickMedia(mediaOrganizeFragment2.dir, (Bundle) null, 0 | mediaOrganizeFragment2.flags, intParam - mediaOrganizeFragment2.adapter.getList().size());
                }
            }
        });
        listView.addFooterView(viewInflate2, null, true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (isPick() && this.adapter.isEmpty()) {
            this.picker.pickMedia(this.dir, (Bundle) null, this.flags | 4, getIntParam("maximum"));
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (isPick()) {
            return;
        }
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        ArrayList arrayList = new ArrayList(this.adapter.getList());
        arrayList.addAll(list);
        this.adapter.clear();
        this.adapter.addAll(arrayList);
        if (!isPick() || list.size() <= 0) {
            return;
        }
        pickAndReturn(list.get(0));
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        if (isPick()) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("mediaList", JacksonUtils.writeAsString(this.adapter.getList()));
        intent.putExtra("coverMediaIndex", getCurrentCoverMediaIndex());
        nVActivity.setResult(-1, intent);
    }

    private class Adapter extends NVArrayAdapter<Media> {
        public Adapter(List<Media> list) {
            super(MediaOrganizeFragment.this, Media.class, list);
        }

        boolean exists(Media media) {
            String str;
            ArrayList<String> arrayList = MediaOrganizeFragment.this.existsRefIds;
            if (arrayList == null || (str = media.refId) == null) {
                return false;
            }
            return arrayList.contains(str);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            int i = bundle.getInt("coverMediaIndex", -1);
            List<Media> list = getList();
            if (list == null || i < 0 || i >= list.size()) {
                return;
            }
            MediaOrganizeFragment.this.coverMedia = list.get(i);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            if (bundleOnSaveInstanceState != null) {
                bundleOnSaveInstanceState.putInt("coverMediaIndex", MediaOrganizeFragment.this.getCurrentCoverMediaIndex());
            }
            return bundleOnSaveInstanceState;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_organize_list_item, viewGroup, view);
            Media item = getItem(i);
            ThumbImageView thumbImageView = (ThumbImageView) viewCreateView.findViewById(R.id.image);
            thumbImageView.setImageMedia(item);
            viewCreateView.findViewById(R.id.edit).setOnClickListener(this.subviewClickListener);
            thumbImageView.setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            textView.setHint(MediaOrganizeFragment.this.isPick() ? R.string.media_no_desc : R.string.media_add_desc);
            textView.setText(item.caption);
            boolean zExists = exists(item);
            viewCreateView.findViewById(R.id.edit).setVisibility(MediaOrganizeFragment.this.isPick() ? 8 : 0);
            viewCreateView.findViewById(R.id.drag_handle).setVisibility(MediaOrganizeFragment.this.isPick() ? 8 : 0);
            viewCreateView.findViewById(R.id.mask).setVisibility(zExists ? 0 : 8);
            viewCreateView.findViewById(R.id.cover_mark).setVisibility(MediaOrganizeFragment.this.isCoverMedia(item) ? 0 : 8);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, final int i, Object obj, View view, View view2) {
            if (obj instanceof Media) {
                if (view2 != null && view2.getId() == R.id.image) {
                    List<Media> list = getList();
                    int iIndexOf = list.indexOf(obj);
                    Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                    intent.putExtra("list", JacksonUtils.writeAsString(list));
                    intent.putExtra("hideShareBar", true);
                    if (iIndexOf >= 0) {
                        intent.putExtra("position", iIndexOf);
                    }
                    startActivity(intent);
                    return true;
                }
                if (view2 != null && view2.getId() == R.id.edit) {
                    final Media media = (Media) obj;
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    final boolean booleanParam = MediaOrganizeFragment.this.getBooleanParam("allowSetCover");
                    if (booleanParam) {
                        if (MediaOrganizeFragment.this.isCoverMedia(media)) {
                            actionSheetDialog.addItem(R.string.remove_as_cover_image, false);
                        } else {
                            actionSheetDialog.addItem(R.string.set_as_cover_image, false);
                        }
                    }
                    actionSheetDialog.addItem(R.string.delete, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.Adapter.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            if (!booleanParam) {
                                if (i2 != 0) {
                                    return;
                                }
                                Adapter.this.removeItem(i, media);
                            } else if (i2 != 0) {
                                if (i2 != 1) {
                                    return;
                                }
                                Adapter.this.removeItem(i, media);
                            } else {
                                if (MediaOrganizeFragment.this.isCoverMedia(media)) {
                                    MediaOrganizeFragment.this.coverMedia = null;
                                } else {
                                    MediaOrganizeFragment.this.coverMedia = media;
                                }
                                Adapter.this.notifyDataSetChanged();
                            }
                        }
                    });
                    actionSheetDialog.show();
                } else {
                    if (MediaOrganizeFragment.this.isPick()) {
                        Media media2 = (Media) obj;
                        if (!exists(media2)) {
                            MediaOrganizeFragment.this.pickAndReturn(media2);
                        }
                        return true;
                    }
                    final Media media3 = (Media) obj;
                    String str = media3.caption;
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    builder.setTitle(R.string.media_caption);
                    final EditText editText = new EditText(getContext());
                    editText.setText(media3.caption);
                    String str2 = media3.caption;
                    editText.setSelection(str2 != null ? str2.length() : 0);
                    builder.setView(editText);
                    builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.Adapter.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            media3.caption = editText.getText().toString().trim();
                            Adapter.this.notifyDataSetChanged();
                        }
                    });
                    builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    AlertDialog alertDialogCreate = builder.create();
                    alertDialogCreate.getWindow().setSoftInputMode(4);
                    alertDialogCreate.show();
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeItem(int i, Media media) {
            if (MediaOrganizeFragment.this.isCoverMedia(media)) {
                MediaOrganizeFragment.this.coverMedia = null;
            }
            MediaOrganizeFragment.this.removeItemAtPosition(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCoverMedia(Media media) {
        return media != null && media == this.coverMedia;
    }

    void pickAndReturn(Media media) {
        ArrayList arrayList = new ArrayList(this.adapter.getList());
        if (arrayList.contains(media)) {
            if (TextUtils.isEmpty(media.refId)) {
                media.refId = newRefId(arrayList);
            }
            Intent intent = new Intent();
            intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
            intent.putExtra("refIdList", media.refId);
            setResult(-1, intent);
            finish();
        }
    }

    void pickAllAndReturn() {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList(this.adapter.getList());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Media media = (Media) it.next();
            if (TextUtils.isEmpty(media.refId)) {
                media.refId = newRefId(arrayList);
            }
            if (!this.existsRefIds.contains(media.refId)) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(media.refId);
            }
        }
        Intent intent = new Intent();
        intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
        intent.putExtra("refIdList", sb.toString());
        setResult(-1, intent);
        finish();
    }

    private String newRefId(List<Media> list) {
        boolean z;
        String str;
        if (rnd == null) {
            rnd = new Random(System.currentTimeMillis());
        }
        do {
            z = false;
            str = "";
            for (int i = 0; i < 3; i++) {
                int iNextInt = rnd.nextInt(36);
                str = iNextInt < 10 ? str + ((char) (iNextInt + 48)) : str + ((char) ((iNextInt - 10) + 65));
            }
            Iterator<Media> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (str.equals(it.next().refId)) {
                    z = true;
                    break;
                }
            }
        } while (z);
        return str;
    }
}
