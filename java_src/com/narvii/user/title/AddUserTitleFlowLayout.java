package com.narvii.user.title;

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
import com.narvii.amino.mastes.R;
import com.narvii.model.api.UserTitle;
import com.narvii.util.CollectionUtils;
import com.narvii.util.PaletteUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class AddUserTitleFlowLayout extends UserTitleFlowView {
    public static final int MAX_TAG_COUNT = 20;
    public View.OnClickListener diabledEditClickListener;
    LayoutInflater inflater;
    OnEditextAddListener onEditextAddListener;
    onSelectedChangedListener onSelectedChangedListener;
    View.OnClickListener onTagClickListener;
    onTagRemovedListener onTagRemovedListener;
    List<UserTitle> selectedTagList;
    View selectedView;
    TagEditListener tagEditListener;
    UserTitleColorEditListener userTitleColorEditListener;
    UserTitleTransformer userTitleTransformer;

    public interface OnEditextAddListener {
        void onEdittextAdded();
    }

    public interface TagEditListener {
        void afterTextChangedEmpty();

        void afterTextChangedNotEmpty(String str);

        void onSaveTextBeyondLimit();
    }

    public interface UserTitleColorEditListener {
        void startEditColor(UserTitle userTitle);
    }

    interface UserTitleTransformer {
        UserTitle transform(UserTitle userTitle);
    }

    public interface onSelectedChangedListener {
        void onChanged(List<UserTitle> list);
    }

    public interface onTagRemovedListener {
        void onTagRemoved(UserTitle userTitle);
    }

    public void setOnEditextAddListener(OnEditextAddListener onEditextAddListener) {
        this.onEditextAddListener = onEditextAddListener;
    }

    public void setUserTitleTransformer(UserTitleTransformer userTitleTransformer) {
        this.userTitleTransformer = userTitleTransformer;
    }

    public void setTagEditListener(TagEditListener tagEditListener) {
        this.tagEditListener = tagEditListener;
    }

    public void setUserTitleColorEditListener(UserTitleColorEditListener userTitleColorEditListener) {
        this.userTitleColorEditListener = userTitleColorEditListener;
    }

    public void setOnSelectedChangedListener(onSelectedChangedListener onselectedchangedlistener) {
        this.onSelectedChangedListener = onselectedchangedlistener;
    }

    public void setOnTagRemovedListener(onTagRemovedListener ontagremovedlistener) {
        this.onTagRemovedListener = ontagremovedlistener;
    }

    public AddUserTitleFlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.selectedTagList = new ArrayList();
        this.onTagClickListener = new View.OnClickListener() { // from class: com.narvii.user.title.AddUserTitleFlowLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddUserTitleFlowLayout.this.selectedView = view;
                view.setSelected(true);
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(AddUserTitleFlowLayout.this.getContext());
                actionSheetDialog.addItem(R.string.edit_user_title_color, false);
                actionSheetDialog.addItem(R.string.remove, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.title.AddUserTitleFlowLayout.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        int iIndexOfChild;
                        if (i != 0) {
                            if (i != 1) {
                                return;
                            }
                            AddUserTitleFlowLayout.this.removeSelectedTagView();
                        } else {
                            AddUserTitleFlowLayout addUserTitleFlowLayout = AddUserTitleFlowLayout.this;
                            if (addUserTitleFlowLayout.userTitleColorEditListener == null || (iIndexOfChild = addUserTitleFlowLayout.indexOfChild(addUserTitleFlowLayout.selectedView)) < 0 || iIndexOfChild >= AddUserTitleFlowLayout.this.selectedTagList.size()) {
                                return;
                            }
                            AddUserTitleFlowLayout.this.userTitleColorEditListener.startEditColor(AddUserTitleFlowLayout.this.selectedTagList.get(iIndexOfChild));
                        }
                    }
                });
                actionSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.user.title.AddUserTitleFlowLayout.1.2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        View view2 = AddUserTitleFlowLayout.this.selectedView;
                        if (view2 != null) {
                            view2.setSelected(false);
                        }
                    }
                });
                actionSheetDialog.show();
            }
        };
        this.inflater = LayoutInflater.from(getContext());
        addEditText();
    }

    private void addEditText() {
        if (findViewById(R.id.add_tag) == null) {
            final EditText editText = (EditText) this.inflater.inflate(R.layout.add_user_title_edit_text, (ViewGroup) this, false);
            editText.setInputType(editText.getInputType() | 524288 | 65536);
            updateEditTextImeOption(editText);
            editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.user.title.AddUserTitleFlowLayout.2
                @Override // android.widget.TextView.OnEditorActionListener
                public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    UserTitle userTitleTransform;
                    if (i != 5 && i != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                        return false;
                    }
                    String string = textView.getText().toString();
                    if (TextUtils.isEmpty(string)) {
                        return true;
                    }
                    if (string.length() > 20) {
                        TagEditListener tagEditListener = AddUserTitleFlowLayout.this.tagEditListener;
                        if (tagEditListener == null) {
                            return true;
                        }
                        tagEditListener.onSaveTextBeyondLimit();
                        return true;
                    }
                    UserTitle userTitle = new UserTitle(string.trim());
                    AddUserTitleFlowLayout addUserTitleFlowLayout = AddUserTitleFlowLayout.this;
                    if (addUserTitleFlowLayout.userTitleTransformer != null && addUserTitleFlowLayout.selectedTagList.indexOf(userTitle) == -1 && (userTitleTransform = AddUserTitleFlowLayout.this.userTitleTransformer.transform(userTitle)) != null) {
                        AddUserTitleFlowLayout.this.addUserTitle(userTitleTransform);
                        Utils.getNVContext(AddUserTitleFlowLayout.this.getContext());
                    }
                    editText.setText((CharSequence) null);
                    return true;
                }
            });
            editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.user.title.AddUserTitleFlowLayout.3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    String string = editable.toString();
                    editText.setTextColor(string.length() > 20 ? SupportMenu.CATEGORY_MASK : -1);
                    if (AddUserTitleFlowLayout.this.tagEditListener != null) {
                        if (!TextUtils.isEmpty(string)) {
                            AddUserTitleFlowLayout.this.tagEditListener.afterTextChangedNotEmpty(string);
                        } else {
                            AddUserTitleFlowLayout.this.tagEditListener.afterTextChangedEmpty();
                        }
                    }
                }
            });
            editText.setBackgroundResource(R.drawable.add_user_title_bg);
            addView(editText, getChildCount());
            OnEditextAddListener onEditextAddListener = this.onEditextAddListener;
            if (onEditextAddListener != null) {
                onEditextAddListener.onEdittextAdded();
            }
        }
    }

    private void removeEditText() {
        View viewFindViewById = findViewById(R.id.add_tag);
        if (viewFindViewById != null) {
            SoftKeyboard.hideSoftKeyboard(getContext());
            removeView(viewFindViewById);
        }
    }

    public void addUserTitle(UserTitle userTitle) {
        if (this.selectedTagList.size() >= 20) {
            return;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.user_title_view_big, (ViewGroup) this, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        textView.setText(userTitle.title);
        textView.setTextColor(PaletteUtils.isDarkColor(this.userTitleColorHelper.getTitleColor(userTitle)) ? -1 : -11908534);
        textView.setBackgroundDrawable(this.userTitleColorHelper.getBackgroundStateDrawable(userTitle));
        viewInflate.setOnClickListener(this.onTagClickListener);
        addView(viewInflate, this.selectedTagList.size());
        EditText editText = getEditText();
        this.selectedTagList.add(userTitle);
        onSelectedChangedListener onselectedchangedlistener = this.onSelectedChangedListener;
        if (onselectedchangedlistener != null) {
            onselectedchangedlistener.onChanged(this.selectedTagList);
        }
        updateEditTextImeOption(editText);
        if (editText != null) {
            editText.setText((CharSequence) null);
        }
        if (this.selectedTagList.size() == 20) {
            removeEditText();
        }
    }

    private void updateEditTextImeOption(EditText editText) {
        if (editText != null) {
            editText.setImeOptions(CollectionUtils.getSize(this.selectedTagList) == 19 ? 6 : 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelectedTagView() {
        int iIndexOfChild = indexOfChild(this.selectedView);
        if (iIndexOfChild < 0 || iIndexOfChild >= this.selectedTagList.size()) {
            return;
        }
        UserTitle userTitle = this.selectedTagList.get(iIndexOfChild);
        onTagRemovedListener ontagremovedlistener = this.onTagRemovedListener;
        if (ontagremovedlistener != null) {
            ontagremovedlistener.onTagRemoved(userTitle);
        }
        removeView(this.selectedView);
        this.selectedTagList.remove(iIndexOfChild);
        onSelectedChangedListener onselectedchangedlistener = this.onSelectedChangedListener;
        if (onselectedchangedlistener != null) {
            onselectedchangedlistener.onChanged(this.selectedTagList);
        }
        updateEditTextImeOption(getEditText());
        if (this.selectedTagList.size() < 20) {
            addEditText();
        }
    }

    public void updateUserTitle(UserTitle userTitle) {
        if (userTitle == null) {
            return;
        }
        int i = 0;
        while (i < this.selectedTagList.size() && !Utils.isEquals(this.selectedTagList.get(i).title, userTitle.title)) {
            i++;
        }
        if (i >= this.selectedTagList.size()) {
            return;
        }
        View childAt = getChildAt(i);
        TextView textView = (TextView) childAt.findViewById(R.id.title);
        textView.setText(userTitle.title);
        textView.setTextColor(PaletteUtils.isDarkColor(this.userTitleColorHelper.getTitleColor(userTitle)) ? -1 : -11908534);
        textView.setBackgroundDrawable(this.userTitleColorHelper.getBackgroundStateDrawable(userTitle));
        childAt.setOnClickListener(this.onTagClickListener);
        this.selectedTagList.set(i, userTitle);
        onSelectedChangedListener onselectedchangedlistener = this.onSelectedChangedListener;
        if (onselectedchangedlistener != null) {
            onselectedchangedlistener.onChanged(this.selectedTagList);
        }
    }

    public EditText getEditText() {
        return (EditText) findViewById(R.id.add_tag);
    }

    public void addUserTitleList(List<UserTitle> list) {
        if (list != null) {
            Iterator<UserTitle> it = list.iterator();
            while (it.hasNext()) {
                addUserTitle(it.next());
            }
        }
    }
}
