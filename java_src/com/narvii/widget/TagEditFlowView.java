package com.narvii.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.internal.view.SupportMenu;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.util.CollectionUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class TagEditFlowView extends NVFlowLayout implements NVActivity.DispatchTouchEventListener {
    public static final int MAX_TAG_COUNT = 20;
    private EditText editText;
    LayoutInflater inflater;
    private OnEditTextAddListener onEditTextAddListener;
    private OnSelectedChangedListener onSelectedChangedListener;
    View.OnClickListener onTagClickListener;
    private OnTagRemovedListener onTagRemovedListener;
    protected final List<String> selectedList;
    protected final List<Tag> selectedTagList;
    View selectedView;
    private TagEditListener tagEditListener;
    private TagTransformer tagTransformer;

    public interface OnEditTextAddListener {
        void onEdittextAdded();
    }

    public interface OnSelectedChangedListener {
        void onChanged(List<Tag> list);
    }

    public interface OnTagRemovedListener {
        void onTagRemoved(Tag tag);
    }

    public interface Tag {
        String getTagTitle();
    }

    public interface TagEditListener {
        void afterTextChangedEmpty();

        void afterTextChangedNotEmpty(String str);

        void onSaveTextBeyondLimit();
    }

    public interface TagTransformer {
        Tag transform(String str);
    }

    protected void advancedEditText(EditText editText) {
    }

    protected boolean allowDuplicateTags() {
        return false;
    }

    protected boolean allowSubmitText(String str) {
        return true;
    }

    protected int getEditTextColor(boolean z) {
        if (z) {
            return SupportMenu.CATEGORY_MASK;
        }
        return -1;
    }

    protected int getMaxChars() {
        return 20;
    }

    protected int getMaxTagCount() {
        return 20;
    }

    protected void tagListTotalCharCountMayChanged() {
    }

    protected abstract View tagView(Tag tag);

    public TagEditFlowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.selectedList = new ArrayList();
        this.selectedTagList = new ArrayList();
        this.editText = null;
        this.onTagClickListener = new View.OnClickListener() { // from class: com.narvii.widget.TagEditFlowView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TagEditFlowView.this.selectedView = view;
                view.setSelected(true);
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(TagEditFlowView.this.getContext());
                actionSheetDialog.addItem(R.string.remove, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.widget.TagEditFlowView.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (i != 0) {
                            return;
                        }
                        TagEditFlowView.this.removeSelectedTagView();
                    }
                });
                actionSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.widget.TagEditFlowView.1.2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        TagEditFlowView.this.unSelectCurrentSelectedView();
                    }
                });
                actionSheetDialog.show();
            }
        };
        this.inflater = LayoutInflater.from(getContext());
        addEditText();
        if (context instanceof NVActivity) {
            ((NVActivity) context).addDispatchTouchEventListener(this);
        }
    }

    public void requestEditFocus() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.requestFocus();
        }
    }

    public void unSelectCurrentSelectedView() {
        View view = this.selectedView;
        if (view != null) {
            view.setSelected(false);
            this.selectedView = null;
        }
    }

    @Override // com.narvii.app.NVActivity.DispatchTouchEventListener
    public void onDispatchTouchEvent() {
        unSelectCurrentSelectedView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelectedTagView() {
        int iIndexOfChild = indexOfChild(this.selectedView);
        if (iIndexOfChild < 0 || iIndexOfChild >= this.selectedTagList.size()) {
            return;
        }
        Tag tag = this.selectedTagList.get(iIndexOfChild);
        OnTagRemovedListener onTagRemovedListener = this.onTagRemovedListener;
        if (onTagRemovedListener != null) {
            onTagRemovedListener.onTagRemoved(tag);
        }
        removeView(this.selectedView);
        this.selectedView = null;
        this.selectedTagList.remove(iIndexOfChild);
        this.selectedList.remove(iIndexOfChild);
        OnSelectedChangedListener onSelectedChangedListener = this.onSelectedChangedListener;
        if (onSelectedChangedListener != null) {
            onSelectedChangedListener.onChanged(this.selectedTagList);
        }
        updateEditTextImeOption(getEditText());
        if (shouldShowEditText()) {
            addEditText();
        }
        tagListTotalCharCountMayChanged();
    }

    public EditText getEditText() {
        return (EditText) findViewById(R.id.add_tag);
    }

    private void addEditText() {
        if (findViewById(R.id.add_tag) == null) {
            if (this.editText == null) {
                this.editText = (EditText) this.inflater.inflate(editTextLayoutId(), (ViewGroup) this, false);
            }
            EditText editText = this.editText;
            editText.setInputType(editText.getInputType() | 524288 | 65536);
            updateEditTextImeOption(this.editText);
            this.editText.setOnKeyListener(new View.OnKeyListener() { // from class: com.narvii.widget.TagEditFlowView.2
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    View childAt;
                    if (i != 67 || keyEvent == null || keyEvent.getAction() != 0 || !TextUtils.isEmpty(TagEditFlowView.this.editText.getText().toString())) {
                        return false;
                    }
                    TagEditFlowView tagEditFlowView = TagEditFlowView.this;
                    if (tagEditFlowView.selectedView != null) {
                        tagEditFlowView.removeSelectedTagView();
                    } else {
                        int childCount = tagEditFlowView.getChildCount() - 2;
                        if (childCount >= 0 && (childAt = TagEditFlowView.this.getChildAt(childCount)) != null) {
                            TagEditFlowView tagEditFlowView2 = TagEditFlowView.this;
                            tagEditFlowView2.selectedView = childAt;
                            tagEditFlowView2.selectedView.setSelected(true);
                        }
                    }
                    return true;
                }
            });
            this.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.widget.TagEditFlowView.3
                @Override // android.widget.TextView.OnEditorActionListener
                public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    if (i != 5 && i != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                        return false;
                    }
                    String strTrim = textView.getText().toString().trim();
                    TagEditFlowView tagEditFlowView = TagEditFlowView.this;
                    tagEditFlowView.editSubmit(strTrim, tagEditFlowView.editText);
                    return true;
                }
            });
            this.editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.widget.TagEditFlowView.4
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    TagEditFlowView.this.unSelectCurrentSelectedView();
                    TagEditFlowView.this.tagListTotalCharCountMayChanged();
                    String string = editable.toString();
                    TagEditFlowView.this.editText.setTextColor(TagEditFlowView.this.getEditTextColor(string.length() > TagEditFlowView.this.getMaxChars()));
                    if (TagEditFlowView.this.tagEditListener != null) {
                        if (!TextUtils.isEmpty(string)) {
                            TagEditFlowView.this.tagEditListener.afterTextChangedNotEmpty(string);
                        } else {
                            TagEditFlowView.this.tagEditListener.afterTextChangedEmpty();
                        }
                    }
                }
            });
            advancedEditText(this.editText);
            addView(this.editText, getChildCount());
            OnEditTextAddListener onEditTextAddListener = this.onEditTextAddListener;
            if (onEditTextAddListener != null) {
                onEditTextAddListener.onEdittextAdded();
            }
        }
    }

    protected void editSubmit(String str, EditText editText) {
        Tag tagTransform;
        String strTrim = str == null ? "" : str.trim();
        if (!TextUtils.isEmpty(strTrim)) {
            if (strTrim.length() > getMaxChars()) {
                TagEditListener tagEditListener = this.tagEditListener;
                if (tagEditListener != null) {
                    tagEditListener.onSaveTextBeyondLimit();
                }
            } else {
                if (!allowSubmitText(strTrim)) {
                    return;
                }
                String strTrim2 = strTrim.trim();
                if (this.tagTransformer != null && ((this.selectedList.indexOf(strTrim2) == -1 || allowDuplicateTags()) && (tagTransform = this.tagTransformer.transform(strTrim2)) != null)) {
                    addTag(tagTransform);
                    OnSelectedChangedListener onSelectedChangedListener = this.onSelectedChangedListener;
                    if (onSelectedChangedListener != null) {
                        onSelectedChangedListener.onChanged(this.selectedTagList);
                    }
                }
                editText.setText((CharSequence) null);
            }
        }
        tagListTotalCharCountMayChanged();
    }

    public void editSubmit() {
        View viewFindViewById = findViewById(R.id.add_tag);
        if (viewFindViewById instanceof EditText) {
            EditText editText = (EditText) viewFindViewById;
            editSubmit(editText.getText().toString(), editText);
        }
    }

    public void addTag(Tag tag) {
        if (disallowAddTag(tag) || tag == null) {
            return;
        }
        if (this.selectedList.indexOf(tag.getTagTitle()) == -1 || allowDuplicateTags()) {
            View viewTagView = tagView(tag);
            viewTagView.setOnClickListener(this.onTagClickListener);
            addView(viewTagView, this.selectedList.size());
            EditText editText = getEditText();
            this.selectedList.add(tag.getTagTitle());
            this.selectedTagList.add(tag);
            updateEditTextImeOption(editText);
            if (editText != null) {
                editText.setText((CharSequence) null);
            }
            if (shouldShowEditText()) {
                return;
            }
            removeEditText();
        }
    }

    protected boolean disallowAddTag(Tag tag) {
        return this.selectedList.size() >= getMaxTagCount();
    }

    protected boolean shouldShowEditText() {
        return this.selectedList.size() < getMaxTagCount();
    }

    private void removeEditText() {
        View viewFindViewById = findViewById(R.id.add_tag);
        if (viewFindViewById != null) {
            SoftKeyboard.hideSoftKeyboard(getContext());
            removeView(viewFindViewById);
        }
    }

    protected int editTextLayoutId() {
        return R.layout.add_tag_default_edit;
    }

    protected void updateEditTextImeOption(EditText editText) {
        if (editText != null) {
            editText.setImeOptions(CollectionUtils.getSize(this.selectedList) == getMaxTagCount() + (-1) ? 6 : 5);
        }
    }

    public void setTagEditListener(TagEditListener tagEditListener) {
        this.tagEditListener = tagEditListener;
    }

    public void setOnSelectedChangedListener(OnSelectedChangedListener onSelectedChangedListener) {
        this.onSelectedChangedListener = onSelectedChangedListener;
    }

    public void setOnTagRemovedListener(OnTagRemovedListener onTagRemovedListener) {
        this.onTagRemovedListener = onTagRemovedListener;
    }

    public void setOnEditTextAddListener(OnEditTextAddListener onEditTextAddListener) {
        this.onEditTextAddListener = onEditTextAddListener;
    }

    public void setTagTransformer(TagTransformer tagTransformer) {
        this.tagTransformer = tagTransformer;
    }

    public List<Tag> getTagList() {
        return this.selectedTagList;
    }

    public void setTagList(List<Tag> list) {
        int childCount = this.selectedTagList.size() < getMaxTagCount() ? getChildCount() - 1 : getChildCount();
        for (int i = 0; i < childCount; i++) {
            removeView(getChildAt(0));
        }
        this.selectedList.clear();
        this.selectedTagList.clear();
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<Tag> it = list.iterator();
        while (it.hasNext()) {
            addTag(it.next());
        }
        if (shouldShowEditText()) {
            addEditText();
        }
    }

    public void requestEdittextFocus() {
        final EditText editText = (EditText) findViewById(R.id.add_tag);
        if (editText != null) {
            editText.post(new Runnable() { // from class: com.narvii.widget.TagEditFlowView.5
                @Override // java.lang.Runnable
                public void run() {
                    editText.requestFocus();
                }
            });
        }
    }

    public boolean isTagFull() {
        return this.selectedList.size() >= getMaxTagCount();
    }
}
