package com.narvii.blog.post;

import android.animation.LayoutTransition;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.CardView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.SwipeToDeleteLayout;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public class PollPostActivity extends TopicPostActivity {
    static final int MAX_POLL_COUNT = 5;
    static final int PICK_POLL_OPTION_FAVORITE = 35;
    View header;
    ViewGroup root;

    class EditHelper implements View.OnFocusChangeListener, TextWatcher {
        TextView countDown;
        EditText editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        EditHelper(EditText editText, TextView textView) {
            this.editText = editText;
            this.countDown = textView;
            update();
            editText.setOnFocusChangeListener(this);
            editText.addTextChangedListener(this);
        }

        void update() {
            this.countDown.setVisibility(this.editText.isFocused() ? 0 : 4);
            this.countDown.setText(String.valueOf(30 - this.editText.length()));
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z6) {
            update();
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            update();
        }
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.blog.post.TopicPostActivity
    protected boolean allowSetCover() {
        return false;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public String draftType() {
        return EntryManager.ENTRY_POLL;
    }

    View getOptionCell(View view) {
        for (int i10 = 0; i10 < 4; i10++) {
            if (view.getId() == R.id.post_poll_option) {
                return view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (View) view.getParent();
            }
        }
        return null;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        setShouldInflateAd(true);
        super.onCreate(bundle);
        ((NVScrollView) findViewById(R.id.scroll)).setOnScrollListener(new NVScrollView.OnScrollListener() { // from class: com.narvii.blog.post.PollPostActivity.1
            @Override // com.narvii.widget.NVScrollView.OnScrollListener
            public void onScroll(int i10, int i11, int i12, int i13) {
                PollPostActivity.this.closeAllSwipeToDelete(true);
            }
        });
        View viewFindViewById = findViewById(R.id.post_poll_header);
        this.header = viewFindViewById;
        viewFindViewById.setVisibility(0);
        this.root = (ViewGroup) this.header.getParent();
        View viewInflate = getLayoutInflater().inflate(R.layout.post_poll_add_option, this.root, false);
        viewInflate.findViewById(R.id.post_poll_add_option).setOnClickListener(this);
        this.root.addView(viewInflate, getOptionIndex());
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.narvii.blog.post.PollPostActivity.2
            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i10) {
                if (i10 == 3 && view.getId() == R.id.post_poll_option) {
                    PollOption pollOption = (PollOption) view.getTag();
                    if (pollOption != null && ((BlogPost) ((DraftPostActivity) PollPostActivity.this).post).polloptList != null) {
                        ((BlogPost) ((DraftPostActivity) PollPostActivity.this).post).polloptList.remove(pollOption);
                    }
                    PollPostActivity pollPostActivity = PollPostActivity.this;
                    pollPostActivity.updateOptions(((BlogPost) ((DraftPostActivity) pollPostActivity).post).polloptList);
                }
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i10) {
            }
        });
        this.root.setLayoutTransition(layoutTransition);
    }

    int trimEmptyOptions(List<PollOption> list, boolean z6) {
        int i10 = 0;
        if (list != null) {
            ListIterator<PollOption> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().isEmpty()) {
                    listIterator.remove();
                    i10++;
                } else if (z6) {
                    break;
                }
            }
        }
        return i10;
    }

    private void requestFocus() {
        ViewGroup viewGroup = this.root;
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return;
        }
        for (int childCount = this.root.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.root.getChildAt(childCount);
            if (childAt != null && childAt.getId() == R.id.post_poll_option) {
                TextView textView = (TextView) childAt.findViewById(R.id.poll_opt_title);
                if (textView instanceof EditText) {
                    textView.requestFocus();
                    return;
                }
                return;
            }
        }
    }

    private void updateAddOptionView(List<PollOption> list) {
        ViewGroup viewGroup = this.root;
        if (viewGroup == null || viewGroup.getChildCount() == 0 || list == null || list.size() == 0) {
            return;
        }
        for (int childCount = this.root.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.root.getChildAt(childCount);
            if (childAt != null && childAt.getId() == R.id.post_poll_add_option) {
                childAt.setAlpha(list.size() >= 5 ? 0.3f : 1.0f);
            }
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", EntryManager.ENTRY_POLL);
    }

    void closeAllSwipeToDelete(boolean z6) {
        int childCount = this.root.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.root.getChildAt(i10);
            if (childAt instanceof SwipeToDeleteLayout) {
                ((SwipeToDeleteLayout) childAt).setSwipeRight(false, z6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public void doPost(BlogPost blogPost) {
        if (blogPost.polloptList != null) {
            ArrayList arrayList = new ArrayList(blogPost.polloptList);
            if (trimEmptyOptions(arrayList, false) > 0) {
                blogPost.polloptList = arrayList;
            }
        }
        super.doPost(blogPost);
    }

    int getOptionIndex() {
        int childCount = this.root.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (this.root.getChildAt(i10) == this.header) {
                return i10 + 1;
            }
        }
        return 0;
    }

    boolean hasDuplicateOptions(List<PollOption> list, PollOption pollOption) {
        String str = pollOption.title;
        if (TextUtils.isEmpty(str == null ? null : str.trim())) {
            return false;
        }
        for (PollOption pollOption2 : list) {
            if (pollOption2 != pollOption && pollOption2.isDuplicate(pollOption)) {
                return true;
            }
        }
        return false;
    }

    PollOption newPollOption() {
        PollOption pollOption = new PollOption();
        pollOption.type = polloptType();
        return pollOption;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        if (bundle == null || !bundle.getBoolean("pollopt")) {
            super.onPickOtherMediaResult(list, bundle);
            return;
        }
        int i10 = bundle.getInt("index");
        BlogPost blogPostSavePost = savePost();
        if (blogPostSavePost.polloptList == null) {
            blogPostSavePost.polloptList = new ArrayList();
        }
        while (blogPostSavePost.polloptList.size() < i10 + 1) {
            blogPostSavePost.polloptList.add(newPollOption());
        }
        blogPostSavePost.polloptList.get(i10).mediaList = list;
        updateView(blogPostSavePost);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded(blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_poll_title);
        }
    }

    int polloptType() {
        T t5 = this.post;
        return JacksonUtils.nodeInt(t5 == 0 ? null : ((BlogPost) t5).extensions, "pollSettings", "polloptType");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        BlogPost blogPostSavePost = super.savePost();
        blogPostSavePost.type = 4;
        ArrayList arrayList = new ArrayList();
        int childCount = this.root.getChildCount();
        for (int optionIndex = getOptionIndex(); optionIndex < childCount; optionIndex++) {
            View childAt = this.root.getChildAt(optionIndex);
            if (childAt.getId() == R.id.post_poll_option) {
                PollOption pollOptionNewPollOption = (PollOption) childAt.getTag();
                if (pollOptionNewPollOption == null) {
                    pollOptionNewPollOption = newPollOption();
                }
                pollOptionNewPollOption.title = ((TextView) childAt.findViewById(R.id.poll_opt_title)).getText().toString();
                arrayList.add(pollOptionNewPollOption);
            }
        }
        blogPostSavePost.polloptList = arrayList;
        return blogPostSavePost;
    }

    void updateOptions(List<PollOption> list) {
        Feed feed;
        int size = list == null ? 0 : list.size();
        int optionIndex = getOptionIndex();
        LinkedList linkedList = new LinkedList();
        int childCount = this.root.getChildCount();
        while (optionIndex < childCount) {
            View childAt = this.root.getChildAt(optionIndex);
            if (childAt.getId() != R.id.post_poll_option) {
                break;
            }
            linkedList.add(childAt);
            optionIndex++;
        }
        int iPolloptType = polloptType();
        int i10 = iPolloptType == 1 ? R.layout.post_poll_option_favorite_item : R.layout.post_poll_option_plain_item;
        while (true) {
            if (linkedList.size() >= 2 && linkedList.size() >= size) {
                break;
            }
            View viewInflate = getLayoutInflater().inflate(i10, this.root, false);
            if (iPolloptType == 0) {
                viewInflate.findViewById(R.id.poll_opt_image).setOnClickListener(this);
                new EditHelper((EditText) viewInflate.findViewById(R.id.poll_opt_title), (TextView) viewInflate.findViewById(R.id.post_poll_countdown));
            } else if (iPolloptType == 1) {
                viewInflate.findViewById(R.id.poll_opt_favorite).setOnClickListener(this);
            }
            viewInflate.findViewById(R.id.delete).setOnClickListener(this);
            linkedList.add(viewInflate);
            this.root.addView(viewInflate, optionIndex);
            optionIndex++;
        }
        while (size > 2 && linkedList.size() > size) {
            this.root.removeView((View) linkedList.removeLast());
        }
        int i11 = 0;
        while (true) {
            if (i11 >= size && i11 >= 2) {
                updateAddOptionView(list);
                return;
            }
            View view = (View) linkedList.get(i11);
            PollOption pollOption = i11 < size ? list.get(i11) : null;
            view.setTag(pollOption);
            view.setTag(R.id.index, Integer.valueOf(i11));
            if (iPolloptType == 0) {
                ((NVImageView) view.findViewById(R.id.poll_opt_image)).setImageMedia(pollOption == null ? null : pollOption.firstMedia());
                TextView textView = (TextView) view.findViewById(R.id.poll_opt_title);
                textView.setHint(getString(R.string.post_poll_option_n, Integer.valueOf(i11 + 1)));
                String str = pollOption == null ? null : pollOption.title;
                if (!Utils.isStringEquals(textView.getText().toString(), str)) {
                    textView.setText(str);
                }
            } else if (iPolloptType == 1) {
                ((CardView) view.findViewById(R.id.poll_opt_card)).setItem(pollOption == null ? null : (Item) pollOption.refObject);
                TextView textView2 = (TextView) view.findViewById(R.id.poll_opt_title);
                textView2.setHint(getString(R.string.post_poll_option_n, Integer.valueOf(i11 + 1)));
                textView2.setText((pollOption == null || (feed = pollOption.refObject) == null) ? null : feed.title());
            }
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public boolean validateUpload(BlogPost blogPost) {
        boolean z6;
        boolean z10;
        boolean z11;
        if (!super.validateUpload(blogPost)) {
            return false;
        }
        ArrayList<PollOption> arrayList = new ArrayList();
        List<PollOption> list = blogPost.polloptList;
        if (list != null) {
            arrayList.addAll(list);
        }
        trimEmptyOptions(arrayList, false);
        if (arrayList.size() < 2) {
            z11 = false;
            z6 = false;
            z10 = true;
        } else if (arrayList.size() > 5) {
            z10 = false;
            z6 = false;
            z11 = true;
        } else {
            z6 = false;
            for (PollOption pollOption : arrayList) {
                if (!pollOption.isEmpty() && hasDuplicateOptions(arrayList, pollOption)) {
                    z6 = true;
                }
            }
            z10 = false;
            z11 = false;
        }
        if (!z10 && !z11 && !z6) {
            return true;
        }
        AlertDialog alertDialog = new AlertDialog(this);
        if (z10) {
            alertDialog.setTitle(R.string.poll_incomplete_title);
        } else if (z11) {
            alertDialog.setTitle(R.string.poll_maximum_title);
        } else {
            alertDialog.setTitle(R.string.poll_duplicate_title);
        }
        alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
        alertDialog.show();
        return false;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 35 && i11 == -1 && intent != null) {
            Item item = (Item) JacksonUtils.readAs(intent.getStringExtra("item"), Item.class);
            int intExtra = intent.getIntExtra("index", 0);
            BlogPost blogPostSavePost = savePost();
            if (blogPostSavePost.polloptList == null) {
                blogPostSavePost.polloptList = new ArrayList();
            }
            while (blogPostSavePost.polloptList.size() < intExtra + 1) {
                blogPostSavePost.polloptList.add(newPollOption());
            }
            PollOption pollOptionNewPollOption = newPollOption();
            pollOptionNewPollOption.refObject = item;
            pollOptionNewPollOption.refObjectId = item.id();
            pollOptionNewPollOption.refObjectType = item.objectType();
            blogPostSavePost.polloptList.set(intExtra, pollOptionNewPollOption);
            updateView(blogPostSavePost);
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z6;
        int i10;
        List<Media> list;
        super.onClick(view);
        if (view.getId() == R.id.poll_opt_image) {
            View optionCell = getOptionCell(view);
            PollOption pollOption = (PollOption) optionCell.getTag();
            Bundle bundle = new Bundle();
            bundle.putBoolean("pollopt", true);
            bundle.putInt("index", ((Integer) optionCell.getTag(R.id.index)).intValue());
            if (pollOption != null && (list = pollOption.mediaList) != null && list.size() > 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            File dir = this.draftManager.getDir(this.draftId);
            if (z6) {
                i10 = 64;
            } else {
                i10 = 0;
            }
            mediaPickerFragment.pickMedia(dir, bundle, i10 | 4);
        }
        if (view.getId() == R.id.delete) {
            View optionCell2 = getOptionCell(view);
            ((SwipeToDeleteLayout) optionCell2).setSwipeRight(false, true);
            ((ViewGroup) optionCell2.getParent()).removeView(optionCell2);
        }
        if (view.getId() == R.id.post_poll_add_option) {
            BlogPost blogPostSavePost = savePost();
            List<PollOption> list2 = blogPostSavePost.polloptList;
            if (list2 != null && list2.size() >= 5) {
                AlertDialog alertDialog = new AlertDialog(this);
                alertDialog.setTitle(R.string.poll_maximum_title);
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
            } else {
                if (blogPostSavePost.polloptList == null) {
                    blogPostSavePost.polloptList = new ArrayList();
                }
                while (blogPostSavePost.polloptList.size() < 2) {
                    blogPostSavePost.polloptList.add(newPollOption());
                }
                blogPostSavePost.polloptList.add(newPollOption());
                updateView(blogPostSavePost);
                requestFocus();
            }
        }
        if (view.getId() == R.id.poll_opt_favorite) {
            View optionCell3 = getOptionCell(view);
            Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
            intent.putExtra("mode", 1);
            intent.putExtra("mine", true);
            intent.putExtra("index", ((Integer) optionCell3.getTag(R.id.index)).intValue());
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 35);
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        super.updateView(blogPost);
        ((TextView) this.root.findViewById(R.id.title)).setHint(R.string.post_poll_title_hint);
        ((TextView) this.root.findViewById(R.id.content)).setHint(R.string.post_poll_content_hint);
        this.root.findViewById(R.id.post_add_link).setVisibility(8);
        updateOptions(blogPost.polloptList);
    }
}
