package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.StringUtils;
import com.tokenautocomplete.TokenCompleteTextView;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class TagEditText extends TokenCompleteTextView<String> {
    LayoutInflater inflater;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tokenautocomplete.TokenCompleteTextView
    public String defaultObject(String str) {
        return str;
    }

    @Override // com.tokenautocomplete.TokenCompleteTextView
    protected void removeListeners() {
    }

    public TagEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLongClickable(true);
        performBestGuess(false);
        allowCollapse(false);
        this.inflater = LayoutInflater.from(context);
        setAdapter(new ArrayAdapter(context, R.layout.simple_dropdown_item, new String[0]));
        setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.widget.TagEditText.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                String string = textView.getText().toString();
                int iLastIndexOf = string.lastIndexOf(44);
                if (iLastIndexOf >= 0) {
                    string = string.substring(iLastIndexOf + 1);
                }
                if (string.trim().length() <= 0) {
                    return false;
                }
                TagEditText.this.performCompletion();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tokenautocomplete.TokenCompleteTextView
    public View getViewForObject(String str) {
        View viewInflate = this.inflater.inflate(R.layout.keyword_view, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(str);
        return viewInflate;
    }

    public void setKeywords(String str) {
        clear();
        Iterator<String> it = StringUtils.split(str, ",").iterator();
        while (it.hasNext()) {
            addObject(it.next());
        }
        setSelection(getText().length());
    }

    public String getKeywords() {
        StringBuilder sb = new StringBuilder();
        for (String str : getObjects()) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
