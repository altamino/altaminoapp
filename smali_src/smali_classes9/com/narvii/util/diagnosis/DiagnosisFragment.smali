.class public Lcom/narvii/util/diagnosis/DiagnosisFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/diagnosis/DiagnosisTask;",
            ">;"
        }
    .end annotation
.end field

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$0()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "Boston is one of the oldest cities in the United States, founded on the Shawmut Peninsula in 1630 by Puritan settlers from England. It was the scene of several key events of the American Revolution, such as the Boston Massacre, the Boston Tea Party, the Battle of Bunker Hill, and the Siege of Boston. Upon U.S. independence from Great Britain, it continued to be an important port and manufacturing hub as well as a center for education and culture. The city has expanded beyond the original peninsula through land reclamation and municipal annexation. Its rich history attracts many tourists, with Faneuil Hall alone drawing more than 20 million visitors per year. Boston\'s many firsts include the United States\' first public or state school (Boston Latin School, 1635), first subway system (Tremont Street Subway, 1897), and first public park (Boston Common, 1634)."

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    return-void
.end method

.method public static synthetic n(Lcom/narvii/util/diagnosis/DiagnosisFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/diagnosis/DiagnosisFragment;->lambda$onOptionsItemSelected$0()V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "Diagnosis"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 13
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    const-string v1, "Restart"

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 8
    const/4 v0, 0x2

    .line 9
    .line 10
    const-string v1, "Copy"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 14
    const/4 v0, 0x3

    .line 15
    .line 16
    const-string v1, "Send"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 20
    const/4 v0, 0x4

    .line 21
    .line 22
    const-string v1, "Toast"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 26
    .line 27
    const-string v0, "showExtras"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/16 v0, 0xb

    .line 36
    .line 37
    const-string v1, "Tapdaq Test"

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 41
    .line 42
    const/16 v0, 0xc

    .line 43
    .line 44
    const-string v1, "Admob Test"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 48
    .line 49
    const/16 v0, 0x61

    .line 50
    .line 51
    const-string v1, "ANR"

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 55
    .line 56
    const/16 v0, 0x62

    .line 57
    .line 58
    const-string v1, "Java Crash"

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 62
    .line 63
    const/16 v0, 0x63

    .line 64
    .line 65
    const-string v1, "Native Crash"

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d013c

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/util/diagnosis/DiagnosisTask;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/DiagnosisFragment;->reset()V

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v2, "clipboard"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/content/ClipboardManager;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->text:Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    const v2, 0x7f1210bd

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :catch_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    const v2, 0x7f1210bc

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 74
    .line 75
    :goto_0
    const-string p1, "showExtras"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->text:Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_1
    return v1

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 101
    move-result v0

    .line 102
    const/4 v2, 0x3

    .line 103
    .line 104
    if-ne v0, v2, :cond_3

    .line 105
    .line 106
    new-instance p1, Landroid/content/Intent;

    .line 107
    .line 108
    const-string v0, "android.intent.action.SEND"

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v0, "text/plain"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    const-string v0, "android.intent.extra.SUBJECT"

    .line 120
    .line 121
    const-string v2, "Diagnosis Result"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->text:Landroid/widget/TextView;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    const-string v2, "android.intent.extra.TEXT"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    invoke-static {p0, p1}, Lcom/narvii/util/diagnosis/DiagnosisFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 143
    return v1

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 147
    move-result v0

    .line 148
    const/4 v2, 0x4

    .line 149
    .line 150
    if-ne v0, v2, :cond_4

    .line 151
    .line 152
    new-instance p1, Lcom/narvii/util/diagnosis/a;

    .line 153
    .line 154
    .line 155
    invoke-direct {p1, p0}, Lcom/narvii/util/diagnosis/a;-><init>(Lcom/narvii/util/diagnosis/DiagnosisFragment;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 159
    .line 160
    const-wide/16 v2, 0x1388

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 164
    return v1

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 168
    move-result v0

    .line 169
    .line 170
    const/16 v2, 0xb

    .line 171
    .line 172
    if-ne v0, v2, :cond_5

    .line 173
    return v1

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 177
    move-result v0

    .line 178
    .line 179
    const/16 v2, 0xc

    .line 180
    .line 181
    if-ne v0, v2, :cond_6

    .line 182
    return v1

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 186
    move-result p1

    .line 187
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0e51

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->text:Landroid/widget/TextView;

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    const/high16 v0, 0x41800000    # 16.0f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/util/diagnosis/DiagnosisFragment;->reset()V

    .line 24
    return-void
.end method

.method reset()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/util/diagnosis/DiagnosisTask;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    :cond_1
    const-string v0, "account"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/util/diagnosis/LocalTask;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/narvii/util/diagnosis/LocalTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/util/diagnosis/GoogleApiTask;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/narvii/util/diagnosis/GoogleApiTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v2, Lcom/narvii/util/diagnosis/VVTask;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/narvii/util/diagnosis/VVTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance v2, Lcom/narvii/util/diagnosis/ConnectivityTask;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/narvii/util/diagnosis/ConnectivityTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 90
    .line 91
    new-instance v2, Lcom/narvii/util/diagnosis/ApiTask;

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/narvii/util/diagnosis/ApiTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 106
    .line 107
    new-instance v1, Lcom/narvii/util/diagnosis/AccountTask;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, p0}, Lcom/narvii/util/diagnosis/AccountTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 116
    .line 117
    new-instance v1, Lcom/narvii/util/diagnosis/PushTask;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/narvii/util/diagnosis/PushTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 126
    .line 127
    new-instance v1, Lcom/narvii/util/diagnosis/WsTask;

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/narvii/util/diagnosis/WsTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 136
    .line 137
    new-instance v1, Lcom/narvii/util/diagnosis/AdsTask;

    .line 138
    .line 139
    .line 140
    invoke-direct {v1, p0}, Lcom/narvii/util/diagnosis/AdsTask;-><init>(Lcom/narvii/app/NVContext;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v1

    .line 154
    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    check-cast v1, Lcom/narvii/util/diagnosis/DiagnosisTask;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/narvii/util/diagnosis/DiagnosisTask;->start()V

    .line 165
    goto :goto_1

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    .line 174
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 175
    :cond_4
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->tasks:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/util/diagnosis/DiagnosisTask;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;->appendTo(Landroid/text/SpannableStringBuilder;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 v1, 0xa

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "TD="

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/http/ApiService;->isTimeSynced()Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    move-result-wide v3

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 53
    move-result-wide v5

    .line 54
    sub-long/2addr v3, v5

    .line 55
    .line 56
    const-wide/16 v5, 0x3e8

    .line 57
    div-long/2addr v3, v5

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_1
    const-string v3, "?"

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    const-string v3, "http.agent"

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    .line 82
    const-string v2, "showExtras"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    const-string v2, "account"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v5, "uid="

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    const-string v5, "did="

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    const-string v3, "push"

    .line 160
    const/4 v4, 0x0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    const-string v3, "gcmToken"

    .line 167
    const/4 v4, 0x0

    .line 168
    .line 169
    .line 170
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    const-string v5, "gcmToken="

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    const-string v4, "ssid="

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/ss/android/tea/common/applog/d;->d()Ljava/lang/String;

    .line 213
    move-result-object v4

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-static {p0, v2}, Lcom/narvii/util/ABTest2;->allTags(Lcom/narvii/app/NVContext;Ljava/lang/StringBuilder;)Z

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lcom/ss/android/tea/common/applog/d;->b()Lorg/json/JSONObject;

    .line 235
    move-result-object v3

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 242
    move-result-object v1

    .line 243
    .line 244
    const-string v3, "ab="

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    move-result-object v1

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 252
    .line 253
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment;->text:Landroid/widget/TextView;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    const-wide/16 v0, 0x64

    .line 259
    .line 260
    .line 261
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 262
    return-void
.end method
