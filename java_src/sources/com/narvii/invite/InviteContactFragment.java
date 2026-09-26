package com.narvii.invite;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.adapter.MarginAdapter;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import com.narvii.permisson.PermissionRationaleDialog;
import com.narvii.share.ShareUtils;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.SearchBar;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class InviteContactFragment extends NVListFragment implements SearchBar.OnSearchListener, View.OnClickListener, FragmentOnBackListener {
    public static final int REQUEST_EMAIL = 2;
    public static final int REQUEST_PHONE = 1;
    private AllContactAdapter allContactAdapter;
    List<Contact> allContactList;
    private TextView finalStep;
    NVFlowLayout inviteeLayout;
    String keyword;
    private SearchBar mSearchBar;
    public MergeAdapter mergeAdapter;
    List<Contact> searchContactList;
    public SearchContactTask searchContactTask;
    View selectedView;
    TextView send;
    public List<Contact> selectedContactList = new ArrayList();
    boolean gotActivityResult = false;
    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.invite.InviteContactFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InviteContactFragment.this.selectedView = view;
            view.setSelected(true);
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(InviteContactFragment.this.getContext());
            actionSheetDialog.addItem(R.string.remove, true);
            Contact contact = (Contact) view.getTag();
            if (contact != null) {
                actionSheetDialog.setTitle(contact.getContactText());
            }
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.invite.InviteContactFragment.1.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 != 0) {
                        return;
                    }
                    InviteContactFragment.this.removeSelectedView();
                }
            });
            actionSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.invite.InviteContactFragment.1.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    View view2 = InviteContactFragment.this.selectedView;
                    if (view2 != null) {
                        view2.setSelected(false);
                    }
                }
            });
            actionSheetDialog.show();
        }
    };

    class AllContactAdapter extends ContactAdapter implements PermissionListener {
        NVPermission.Builder builder;
        boolean denied;
        public LoadContactsTask loadContactsTask;
        boolean loadFinished;

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // com.narvii.permisson.PermissionListener
        public void onPermissionDenied(int i10, boolean z6, ArrayList<String> arrayList) {
            this.denied = true;
            notifyDataSetChanged();
            if (z6) {
                PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).show();
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            this.loadFinished = false;
            this.denied = false;
            this.builder.request();
            notifyDataSetChanged();
        }

        public AllContactAdapter(NVContext nVContext) {
            super(nVContext);
            this.loadFinished = false;
            this.builder = NVPermission.builder(InviteContactFragment.this).permission("android.permission.READ_CONTACTS").requestCode(110).permissionListener(this);
        }

        private void loadContacts() {
            LoadContactsTask loadContactsTask = InviteContactFragment.this.new LoadContactsTask();
            this.loadContactsTask = loadContactsTask;
            loadContactsTask.setCallback(new Callback<List<Contact>>() { // from class: com.narvii.invite.InviteContactFragment.AllContactAdapter.1
                @Override // com.narvii.util.Callback
                public void call(List<Contact> list) {
                    AllContactAdapter allContactAdapter = AllContactAdapter.this;
                    allContactAdapter.loadFinished = true;
                    InviteContactFragment.this.allContactList = list;
                    allContactAdapter.notifyDataSetChanged();
                }
            });
            this.loadContactsTask.execute(new Void[0]);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(InviteContactFragment.this.keyword) && !CollectionUtils.isEmpty(InviteContactFragment.this.allContactList)) {
                return CollectionUtils.getSize(InviteContactFragment.this.allContactList);
            }
            return 0;
        }

        @Override // com.narvii.invite.InviteContactFragment.ContactAdapter, android.widget.Adapter
        public Contact getItem(int i10) {
            return InviteContactFragment.this.allContactList.get(i10);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (TextUtils.isEmpty(InviteContactFragment.this.keyword)) {
                return (this.loadFinished || this.denied) && CollectionUtils.isEmpty(InviteContactFragment.this.allContactList);
            }
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return InviteContactFragment.this.allContactList != null || this.denied;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            InviteContactFragment.this.registerPermissionResult(110, this);
            this.builder.request();
        }

        @Override // com.narvii.list.NVAdapter
        public void onDetach() {
            super.onDetach();
            LoadContactsTask loadContactsTask = this.loadContactsTask;
            if (loadContactsTask != null) {
                loadContactsTask.cancel(true);
            }
        }

        @Override // com.narvii.permisson.PermissionListener
        public void onPermissionGranted(int i10) {
            loadContacts();
        }
    }

    public static class Contact implements Comparable<Contact> {
        public String email;
        public String name;
        public String phone;

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Contact)) {
                return false;
            }
            Contact contact = (Contact) obj;
            return Utils.isStringEquals(this.name, contact.name) && Utils.isStringEquals(PhoneNumberUtils.stripSeparators(this.phone), PhoneNumberUtils.stripSeparators(contact.phone)) && Utils.isStringEquals(this.email, contact.email);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.name, PhoneNumberUtils.stripSeparators(this.phone), this.email});
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Contact contact) {
            return getCompareKey().compareTo(contact == null ? "" : contact.getCompareKey());
        }

        public String getContactText() {
            return !TextUtils.isEmpty(this.phone) ? this.phone : this.email;
        }

        public String getDisplayName() {
            if (TextUtils.isEmpty(this.name)) {
                return !TextUtils.isEmpty(this.phone) ? this.phone : this.email;
            }
            return this.name;
        }

        private String getCompareKey() {
            String displayName = getDisplayName();
            if (displayName == null) {
                return "";
            }
            return displayName.toLowerCase(Locale.US);
        }
    }

    abstract class ContactAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Contact getItem(int i10) {
            return null;
        }

        public ContactAdapter(NVContext nVContext) {
            super(nVContext);
        }

        private boolean isSelected(int i10) {
            return InviteContactFragment.this.selectedContactList.contains(getItem(i10));
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            Contact item = getItem(i10);
            View viewCreateView = createView(R.layout.item_invite_contact, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(item.getDisplayName());
            TextView textView = (TextView) viewCreateView.findViewById(R.id.desc);
            textView.setText(item.getContactText());
            if (!TextUtils.isEmpty(item.name) && !TextUtils.isEmpty(textView.getText())) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            textView.setVisibility(i11);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.select);
            if (isSelected(i10)) {
                i12 = R.drawable.invite_contact_selected;
            } else {
                i12 = R.drawable.invite_contact_unselected;
            }
            imageView.setImageResource(i12);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Contact item = getItem(i10);
            if (InviteContactFragment.this.selectedContactList.contains(item)) {
                InviteContactFragment.this.selectedContactList.remove(item);
            } else {
                InviteContactFragment.this.selectedContactList.add(item);
            }
            InviteContactFragment.this.update();
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    class LoadContactsTask extends AsyncTask<Void, Void, List<Contact>> {
        Callback<List<Contact>> callback;

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }

        public void setCallback(Callback<List<Contact>> callback) {
            this.callback = callback;
        }

        LoadContactsTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code duplicated, block: B:22:0x0078  */
        @Override // android.os.AsyncTask
        public List<Contact> doInBackground(Void... voidArr) {
            byte b7;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                Cursor cursorQuery = InviteContactFragment.this.getContext().getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "mimetype=? OR mimetype=?", new String[]{"vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/phone_v2"}, null);
                if (cursorQuery != null && cursorQuery.moveToFirst() && !isCancelled()) {
                    do {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("display_name"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("data1"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("mimetype"));
                        Contact contact = new Contact();
                        int iHashCode = string3.hashCode();
                        if (iHashCode != -1569536764) {
                            if (iHashCode == 684173810 && string3.equals("vnd.android.cursor.item/phone_v2")) {
                                b7 = 1;
                            } else {
                                b7 = -1;
                            }
                        } else if (string3.equals("vnd.android.cursor.item/email_v2")) {
                            b7 = 0;
                        } else {
                            b7 = -1;
                        }
                        if (b7 == 0) {
                            contact.email = string2;
                        } else if (b7 == 1) {
                            contact.phone = string2;
                        }
                        contact.name = string;
                        linkedHashSet.add(contact);
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                    } while (!isCancelled());
                }
            } catch (Exception e) {
                Log.e(e.getMessage());
            }
            ArrayList arrayList = new ArrayList(linkedHashSet);
            Collections.sort(arrayList);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<Contact> list) {
            super.onPostExecute(list);
            Callback<List<Contact>> callback = this.callback;
            if (callback != null) {
                callback.call(list);
            }
        }
    }

    class SearchContactAdapter extends ContactAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public SearchContactAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(InviteContactFragment.this.keyword) || CollectionUtils.isEmpty(InviteContactFragment.this.searchContactList)) {
                return 0;
            }
            return CollectionUtils.getSize(InviteContactFragment.this.searchContactList);
        }

        @Override // com.narvii.invite.InviteContactFragment.ContactAdapter, android.widget.Adapter
        public Contact getItem(int i10) {
            return InviteContactFragment.this.searchContactList.get(i10);
        }

        @Override // com.narvii.invite.InviteContactFragment.ContactAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i10, view, viewGroup);
            ViewUtils.highlightKeywords((TextView) view2.findViewById(R.id.text), InviteContactFragment.this.keyword, -16724355);
            ViewUtils.highlightKeywords((TextView) view2.findViewById(R.id.desc), InviteContactFragment.this.keyword, -16724355);
            return view2;
        }
    }

    public class SearchContactTask extends AsyncTask<Void, Void, List<Contact>> {
        List<Contact> allContactList;
        Callback<List<Contact>> callback;
        String keyword;

        public void setCallback(Callback<List<Contact>> callback) {
            this.callback = callback;
        }

        public SearchContactTask(List<Contact> list, String str) {
            this.allContactList = list;
            this.keyword = str;
        }

        private boolean isContatin(Contact contact, String str) {
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            String str2 = contact.name;
            if (str2 != null && str2.toLowerCase(locale).contains(lowerCase)) {
                return true;
            }
            String str3 = contact.email;
            if (str3 != null && str3.toLowerCase(locale).contains(lowerCase)) {
                return true;
            }
            String str4 = contact.phone;
            return str4 != null && str4.toLowerCase(locale).contains(lowerCase);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<Contact> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            List<Contact> list = this.allContactList;
            if (list != null) {
                for (Contact contact : list) {
                    if (isCancelled()) {
                        Log.d("search contact task is cancelled");
                        break;
                    }
                    if (isContatin(contact, this.keyword)) {
                        arrayList.add(contact);
                    }
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<Contact> list) {
            Callback<List<Contact>> callback = this.callback;
            if (callback != null) {
                callback.call(list);
            }
        }
    }

    class SearchEmptyAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public SearchEmptyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (TextUtils.isEmpty(InviteContactFragment.this.keyword) || !CollectionUtils.isEmpty(InviteContactFragment.this.searchContactList)) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_invite_contact, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(InviteContactFragment.this.keyword);
            viewCreateView.findViewById(R.id.desc).setVisibility(8);
            ((ImageView) viewCreateView.findViewById(R.id.select)).setImageResource(R.drawable.invite_contact_plus);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Contact contact = new Contact();
            if (Utils.isValidPhone(InviteContactFragment.this.keyword)) {
                contact.phone = InviteContactFragment.this.keyword;
            } else {
                if (!Utils.isValidEmail(InviteContactFragment.this.keyword)) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.invalid_email_or_phone);
                    aCMAlertDialog.addButton(android.R.string.ok, null);
                    aCMAlertDialog.show();
                    return true;
                }
                contact.email = InviteContactFragment.this.keyword;
            }
            List<Contact> list = InviteContactFragment.this.allContactList;
            if (list != null) {
                list.add(0, contact);
                InviteContactFragment.this.selectedContactList.add(contact);
                if (InviteContactFragment.this.mSearchBar != null) {
                    InviteContactFragment.this.mSearchBar.getEditText().setText((CharSequence) null);
                }
                InviteContactFragment.this.update();
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelectedView() {
        View view = this.selectedView;
        if (view == null) {
            return;
        }
        this.selectedContactList.remove(view.getTag());
        update();
    }

    private void searchContact(final String str) {
        SearchContactTask searchContactTask = this.searchContactTask;
        if (searchContactTask != null) {
            searchContactTask.cancel(true);
        }
        if (TextUtils.isEmpty(str)) {
            this.keyword = null;
            MergeAdapter mergeAdapter = this.mergeAdapter;
            if (mergeAdapter != null) {
                mergeAdapter.notifyDataSetChanged();
            }
        }
        SearchContactTask searchContactTask2 = new SearchContactTask(this.allContactList, str);
        this.searchContactTask = searchContactTask2;
        searchContactTask2.callback = new Callback<List<Contact>>() { // from class: com.narvii.invite.InviteContactFragment.5
            @Override // com.narvii.util.Callback
            public void call(List<Contact> list) {
                InviteContactFragment inviteContactFragment = InviteContactFragment.this;
                MergeAdapter mergeAdapter2 = inviteContactFragment.mergeAdapter;
                if (mergeAdapter2 != null) {
                    inviteContactFragment.keyword = str;
                    inviteContactFragment.searchContactList = list;
                    mergeAdapter2.notifyDataSetChanged();
                }
            }
        };
        this.searchContactTask.execute(new Void[0]);
    }

    private boolean sendInviteOut() {
        int i10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String stringParam = getStringParam("subject");
        String stringParam2 = getStringParam("text");
        for (Contact contact : this.selectedContactList) {
            if (!TextUtils.isEmpty(contact.email)) {
                arrayList2.add(contact.email);
            } else if (!TextUtils.isEmpty(contact.phone)) {
                arrayList.add(contact.phone);
            }
        }
        if (arrayList2.isEmpty()) {
            i10 = 0;
        } else {
            Intent intentEmailIntent = new ShareUtils(this).emailIntent(null, stringParam, stringParam2, null);
            if (intentEmailIntent == null) {
                NVToast.makeText(getContext(), R.string.application_not_found, 0).show();
            } else {
                try {
                    intentEmailIntent.putExtra("android.intent.extra.EMAIL", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intentEmailIntent, 2);
                    i10 = 1;
                } catch (ActivityNotFoundException e) {
                    Log.e(e.getMessage());
                    i10 = 0;
                }
            }
            i10 = 0;
        }
        if (!arrayList.isEmpty()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(getContext());
            if (defaultSmsPackage != null) {
                intent.setPackage(defaultSmsPackage);
            }
            intent.setData(Uri.parse("sms:" + TextUtils.join("; ", arrayList)));
            intent.putExtra("sms_body", stringParam2);
            try {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1);
                i10++;
            } catch (ActivityNotFoundException e2) {
                Log.e(e2.getMessage());
            }
        }
        if (i10 == 0) {
            NVToast.makeText(getContext(), R.string.application_not_found, 0).show();
        }
        ((StatisticsService) getService("statistics")).event("Send Invites to Contacts").userPropInc("Send Invites to Contacts Total", arrayList.size() + arrayList2.size());
        return i10 != 0;
    }

    private void updateInviteeView() {
        ArrayList arrayList = new ArrayList();
        Iterator<Contact> it = this.selectedContactList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getDisplayName());
        }
        NVFlowLayout nVFlowLayout = this.inviteeLayout;
        if (nVFlowLayout != null) {
            nVFlowLayout.removeAllViews();
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.textview_invitee, (ViewGroup) this.inviteeLayout, false);
            this.inviteeLayout.addView(textView);
            textView.setText(getString(R.string.invitees) + ":");
            int i10 = 0;
            while (i10 < this.selectedContactList.size()) {
                Contact contact = this.selectedContactList.get(i10);
                TextView textView2 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.textview_invitee_item, (ViewGroup) this.inviteeLayout, false);
                StringBuilder sb = new StringBuilder();
                sb.append(contact.getDisplayName());
                sb.append(i10 != this.selectedContactList.size() + (-1) ? "," : "");
                textView2.setText(sb.toString());
                textView2.setTag(contact);
                textView2.setOnClickListener(this.onClickListener);
                this.inviteeLayout.addView(textView2);
                i10++;
            }
        }
    }

    private void updateSendView() {
        TextView textView = this.send;
        if (textView != null) {
            ViewUtils.show(textView, !CollectionUtils.isEmpty(this.selectedContactList));
            this.send.setText(this.selectedContactList.size() == 1 ? getString(R.string.send_one_invite) : getString(R.string.send_invites, Integer.valueOf(this.selectedContactList.size())));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.allContactAdapter = new AllContactAdapter(this);
        SearchContactAdapter searchContactAdapter = new SearchContactAdapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.invite.InviteContactFragment.2
        };
        SearchEmptyAdapter searchEmptyAdapter = new SearchEmptyAdapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.mergeAdapter = mergeAdapter;
        mergeAdapter.addAdapter(this.allContactAdapter);
        this.mergeAdapter.addAdapter(searchContactAdapter);
        this.mergeAdapter.addAdapter(searchEmptyAdapter);
        this.mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 70.0f)));
        dividerAdapter.setAdapter(this.mergeAdapter);
        return dividerAdapter;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (getBooleanParam("afterCreateCommunity")) {
            goDashboard();
            return true;
        }
        if (nVActivity == null) {
            return true;
        }
        nVActivity.finish();
        return true;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_invite_contact, viewGroup, false);
    }

    private void goDashboard() {
        getActivity().finish();
        Community community = (Community) JacksonUtils.readAs(getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class);
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        statisticsService.event("Create Community - Finished").userPropInc("Number of Communities Creation");
        statisticsService.event("Joins a Community").param(EventConstants.CommentPost.TYPE, "join").param("Community ID", community.id).param("Template", community.templateId).source("ACM - Created a Community");
        MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(getContext());
        HashMap map = new HashMap();
        mixpanelAnalytics.increment("number_of_communities_creation", 1);
        map.put("type", "join");
        map.put("community_id", String.valueOf(community.id));
        map.put("template", String.valueOf(community.templateId));
        map.put("source", "acm_created_a_community");
        mixpanelAnalytics.trackEvent("joins_a_community", map);
        ((NotificationCenter) getService("notification")).sendNotification(new Notification("new", community));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        updateInviteeView();
        updateSendView();
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getActivity().getWindow().setSoftInputMode(35);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1 || i10 == 2) {
            if (getBooleanParam("afterCreateCommunity") && !this.gotActivityResult) {
                this.gotActivityResult = true;
                goDashboard();
                return;
            }
            SearchBar searchBar = this.mSearchBar;
            if (searchBar != null) {
                searchBar.getEditText().setText((CharSequence) null);
            }
            this.selectedContactList.clear();
            update();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.send) {
            sendInviteOut();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.invite_contacts);
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.OnGestureListener() { // from class: com.narvii.invite.InviteContactFragment.3
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (InviteContactFragment.this.mSearchBar == null || !InviteContactFragment.this.mSearchBar.getEditText().isFocused()) {
                    return false;
                }
                SoftKeyboard.hideSoftKeyboard(InviteContactFragment.this.mSearchBar.getEditText());
                return false;
            }
        });
        listView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.invite.InviteContactFragment.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                gestureDetector.onTouchEvent(motionEvent);
                return false;
            }
        });
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        searchContact(str);
        searchBar.clearFocus();
        SoftKeyboard.hideSoftKeyboard(searchBar.getEditText());
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        searchContact(str);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search);
        this.mSearchBar = searchBar;
        searchBar.setVisibility(0);
        this.mSearchBar.setOnSearchListener(this);
        this.mSearchBar.setHintText(getString(R.string.invite_contact_search_hint));
        TextView textView = (TextView) view.findViewById(R.id.final_step);
        this.finalStep = textView;
        textView.setText(getString(R.string.create_final_step_desc, 5) + "✌");
        ViewUtils.show(this.finalStep, getBooleanParam("afterCreateCommunity"));
        if (getBooleanParam("afterCreateCommunity")) {
            ((NVActivity) getActivity()).setActionBarLeftTextView(R.string.skip);
        }
        this.inviteeLayout = (NVFlowLayout) view.findViewById(R.id.invitee_layout);
        updateInviteeView();
        TextView textView2 = (TextView) view.findViewById(R.id.send);
        this.send = textView2;
        textView2.setOnClickListener(this);
        updateSendView();
    }
}
