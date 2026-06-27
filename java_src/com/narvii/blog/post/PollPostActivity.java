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
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.catalog.picker.CatalogPickerFragment;
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
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public class PollPostActivity extends TopicPostActivity {
    static final int MAX_POLL_COUNT = 5;
    static final int PICK_POLL_OPTION_FAVORITE = 35;
    View header;
    ViewGroup root;

    @Override // com.narvii.blog.post.TopicPostActivity
    protected boolean allowSetCover() {
        return false;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public String draftType() {
        return EntryManager.ENTRY_POLL;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((NVScrollView) findViewById(R.id.scroll)).setOnScrollListener(new NVScrollView.OnScrollListener() { // from class: com.narvii.blog.post.PollPostActivity.1
            @Override // com.narvii.widget.NVScrollView.OnScrollListener
            public void onScroll(int i, int i2, int i3, int i4) {
                PollPostActivity.this.closeAllSwipeToDelete(true);
            }
        });
        this.header = findViewById(R.id.post_poll_header);
        this.header.setVisibility(0);
        this.root = (ViewGroup) this.header.getParent();
        View viewInflate = getLayoutInflater().inflate(R.layout.post_poll_add_option, this.root, false);
        viewInflate.findViewById(R.id.post_poll_add_option).setOnClickListener(this);
        this.root.addView(viewInflate, getOptionIndex());
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.narvii.blog.post.PollPostActivity.2
            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i) {
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i) {
                if (i == 3 && view.getId() == R.id.post_poll_option) {
                    PollOption pollOption = (PollOption) view.getTag();
                    if (pollOption != null && ((BlogPost) ((DraftPostActivity) PollPostActivity.this).post).polloptList != null) {
                        ((BlogPost) ((DraftPostActivity) PollPostActivity.this).post).polloptList.remove(pollOption);
                    }
                    PollPostActivity pollPostActivity = PollPostActivity.this;
                    pollPostActivity.updateOptions(((BlogPost) ((DraftPostActivity) pollPostActivity).post).polloptList);
                }
            }
        });
        this.root.setLayoutTransition(layoutTransition);
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
        T t = this.post;
        return JacksonUtils.nodeInt(t == 0 ? null : ((BlogPost) t).extensions, "pollSettings", "polloptType");
    }

    PollOption newPollOption() {
        PollOption pollOption = new PollOption();
        pollOption.type = polloptType();
        return pollOption;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", EntryManager.ENTRY_POLL);
    }

    @Override // com.narvii.blog.post.TopicPostActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        List<Media> list;
        super.onClick(view);
        if (view.getId() == R.id.poll_opt_image) {
            View optionCell = getOptionCell(view);
            PollOption pollOption = (PollOption) optionCell.getTag();
            Bundle bundle = new Bundle();
            bundle.putBoolean("pollopt", true);
            bundle.putInt("index", ((Integer) optionCell.getTag(R.id.index)).intValue());
            this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle, (pollOption != null && (list = pollOption.mediaList) != null && list.size() > 0 ? 64 : 0) | 4);
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
            startActivityForResult(intent, 35);
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        if (bundle != null && bundle.getBoolean("pollopt")) {
            int i = bundle.getInt("index");
            BlogPost blogPostSavePost = savePost();
            if (blogPostSavePost.polloptList == null) {
                blogPostSavePost.polloptList = new ArrayList();
            }
            while (blogPostSavePost.polloptList.size() < i + 1) {
                blogPostSavePost.polloptList.add(newPollOption());
            }
            blogPostSavePost.polloptList.get(i).mediaList = list;
            updateView(blogPostSavePost);
            return;
        }
        super.onPickOtherMediaResult(list, bundle);
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 35 && i2 == -1 && intent != null) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        super.updateView(blogPost);
        ((TextView) this.root.findViewById(R.id.title)).setHint(R.string.post_poll_title_hint);
        ((TextView) this.root.findViewById(R.id.content)).setHint(R.string.post_poll_content_hint);
        this.root.findViewById(R.id.post_add_link).setVisibility(8);
        updateOptions(blogPost.polloptList);
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
        int i = iPolloptType == 1 ? R.layout.post_poll_option_favorite_item : R.layout.post_poll_option_plain_item;
        while (true) {
            if (linkedList.size() >= 2 && linkedList.size() >= size) {
                break;
            }
            View viewInflate = getLayoutInflater().inflate(i, this.root, false);
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
        int i2 = 0;
        while (true) {
            if (i2 < size || i2 < 2) {
                View view = (View) linkedList.get(i2);
                PollOption pollOption = i2 < size ? list.get(i2) : null;
                view.setTag(pollOption);
                view.setTag(R.id.index, Integer.valueOf(i2));
                if (iPolloptType == 0) {
                    ((NVImageView) view.findViewById(R.id.poll_opt_image)).setImageMedia(pollOption == null ? null : pollOption.firstMedia());
                    TextView textView = (TextView) view.findViewById(R.id.poll_opt_title);
                    textView.setHint(getString(R.string.post_poll_option_n, new Object[]{Integer.valueOf(i2 + 1)}));
                    String str = pollOption == null ? null : pollOption.title;
                    if (!Utils.isStringEquals(textView.getText().toString(), str)) {
                        textView.setText(str);
                    }
                } else if (iPolloptType == 1) {
                    ((CardView) view.findViewById(R.id.poll_opt_card)).setItem(pollOption == null ? null : (Item) pollOption.refObject);
                    TextView textView2 = (TextView) view.findViewById(R.id.poll_opt_title);
                    textView2.setHint(getString(R.string.post_poll_option_n, new Object[]{Integer.valueOf(i2 + 1)}));
                    textView2.setText((pollOption == null || (feed = pollOption.refObject) == null) ? null : feed.title());
                }
                i2++;
            } else {
                updateAddOptionView(list);
                return;
            }
        }
    }

    int getOptionIndex() {
        int childCount = this.root.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (this.root.getChildAt(i) == this.header) {
                return i + 1;
            }
        }
        return 0;
    }

    View getOptionCell(View view) {
        for (int i = 0; i < 4; i++) {
            if (view.getId() == R.id.post_poll_option) {
                return view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (View) view.getParent();
            }
        }
        return null;
    }

    int trimEmptyOptions(List<PollOption> list, boolean z) {
        int i = 0;
        if (list != null) {
            ListIterator<PollOption> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().isEmpty()) {
                    listIterator.remove();
                    i++;
                } else if (z) {
                    break;
                }
            }
        }
        return i;
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0065  */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validateUpload(com.narvii.blog.post.BlogPost r7) {
        /*
            r6 = this;
            boolean r0 = super.validateUpload(r7)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.List<com.narvii.model.PollOption> r7 = r7.polloptList
            if (r7 == 0) goto L14
            r0.addAll(r7)
        L14:
            r6.trimEmptyOptions(r0, r1)
            int r7 = r0.size()
            r2 = 2
            r3 = 1
            if (r7 >= r2) goto L23
            r7 = 1
            r0 = 0
        L21:
            r2 = 0
            goto L4f
        L23:
            int r7 = r0.size()
            r2 = 5
            if (r7 <= r2) goto L2d
            r7 = 0
            r0 = 1
            goto L21
        L2d:
            java.util.Iterator r7 = r0.iterator()
            r2 = 0
        L32:
            boolean r4 = r7.hasNext()
            if (r4 == 0) goto L4d
            java.lang.Object r4 = r7.next()
            com.narvii.model.PollOption r4 = (com.narvii.model.PollOption) r4
            boolean r5 = r4.isEmpty()
            if (r5 == 0) goto L45
            goto L32
        L45:
            boolean r4 = r6.hasDuplicateOptions(r0, r4)
            if (r4 == 0) goto L32
            r2 = 1
            goto L32
        L4d:
            r7 = 0
            r0 = 0
        L4f:
            if (r7 != 0) goto L57
            if (r0 != 0) goto L57
            if (r2 == 0) goto L56
            goto L57
        L56:
            return r3
        L57:
            com.narvii.util.dialog.AlertDialog r2 = new com.narvii.util.dialog.AlertDialog
            r2.<init>(r6)
            if (r7 == 0) goto L65
            r7 = 2131692914(0x7f0f0d72, float:1.9014942E38)
            r2.setTitle(r7)
            goto L74
        L65:
            if (r0 == 0) goto L6e
            r7 = 2131692915(0x7f0f0d73, float:1.9014944E38)
            r2.setTitle(r7)
            goto L74
        L6e:
            r7 = 2131692912(0x7f0f0d70, float:1.9014937E38)
            r2.setTitle(r7)
        L74:
            r7 = 17039370(0x104000a, float:2.42446E-38)
            r0 = 0
            r2.addButton(r7, r1, r0)
            r2.show()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.blog.post.PollPostActivity.validateUpload(com.narvii.blog.post.BlogPost):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public void doPost(BlogPost blogPost) {
        List<PollOption> list = blogPost.polloptList;
        if (list != null) {
            ArrayList arrayList = new ArrayList(list);
            if (trimEmptyOptions(arrayList, false) > 0) {
                blogPost.polloptList = arrayList;
            }
        }
        super.doPost(blogPost);
    }

    void closeAllSwipeToDelete(boolean z) {
        int childCount = this.root.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.root.getChildAt(i);
            if (childAt instanceof SwipeToDeleteLayout) {
                ((SwipeToDeleteLayout) childAt).setSwipeRight(false, z);
            }
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
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

    class EditHelper implements View.OnFocusChangeListener, TextWatcher {
        TextView countDown;
        EditText editText;

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
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

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            update();
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            update();
        }
    }
}
