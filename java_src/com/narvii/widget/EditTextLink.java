package com.narvii.widget;

import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.twitter.Extractor;
import java.util.List;

/* loaded from: classes3.dex */
public class EditTextLink extends EditText {
    public EditTextLink(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (i == 16908322) {
            CharSequence text = ((ClipboardManager) getContext().getSystemService("clipboard")).getText();
            if (!TextUtils.isEmpty(text)) {
                Extractor extractor = new Extractor();
                String strTrim = text.toString().trim();
                List<String> listExtractURLs = extractor.extractURLs(strTrim);
                if (listExtractURLs.size() == 1) {
                    String str = listExtractURLs.get(0);
                    if (strTrim.equals(str)) {
                        showPasteDialog(str);
                        return true;
                    }
                }
            }
        }
        return super.onTextContextMenuItem(i);
    }

    private void showPasteDialog(final String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(R.string.insert_link_title);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.insert_link_dlg, (ViewGroup) null);
        builder.setView(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.url)).setText(str);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.text);
        builder.setPositiveButton(R.string.insert_link_btn, new DialogInterface.OnClickListener() { // from class: com.narvii.widget.EditTextLink.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String strReplace = editText.getText().toString().trim().replace("|", "").replace("]", "").replace("[", "");
                String str2 = str;
                if (!TextUtils.isEmpty(strReplace)) {
                    str2 = "[" + strReplace + "|" + str + "]";
                }
                int selectionStart = EditTextLink.this.getSelectionStart();
                int selectionEnd = EditTextLink.this.getSelectionEnd();
                if (selectionStart != 0 && (selectionStart <= 0 || !Character.isWhitespace(EditTextLink.this.getText().charAt(selectionStart - 1)))) {
                    str2 = " " + str2;
                }
                if (selectionEnd < 0 || selectionEnd >= EditTextLink.this.getText().length() - 1 || !Character.isWhitespace(EditTextLink.this.getText().charAt(selectionEnd))) {
                    str2 = str2 + " ";
                }
                if (selectionStart < 0 || selectionEnd < 0) {
                    EditTextLink.this.getText().append((CharSequence) str2);
                } else if (selectionStart == selectionEnd) {
                    EditTextLink.this.getText().insert(selectionStart, str2);
                } else {
                    EditTextLink.this.getText().replace(selectionStart, selectionEnd, str2);
                }
            }
        });
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.getWindow().setSoftInputMode(4);
        alertDialogCreate.show();
    }
}
