.class Landroidx/preference/Preference$OnPreferenceCopyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnPreferenceCopyListener"
.end annotation


# instance fields
.field private final mPreference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;)V
    .locals 0
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/preference/Preference;->z()Ljava/lang/CharSequence;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    iget-object p3, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroidx/preference/Preference;->E()Z

    .line 12
    move-result p3

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p3

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 25
    .line 26
    sget p2, Landroidx/preference/R$string;->copy:I

    .line 27
    const/4 p3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p3, p3, p3, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "clipboard"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroid/content/ClipboardManager;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/preference/Preference;->z()Ljava/lang/CharSequence;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "Preference"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/preference/Preference$OnPreferenceCopyListener;->mPreference:Landroidx/preference/Preference;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    sget v2, Landroidx/preference/R$string;->preference_copied:I

    .line 44
    const/4 v3, 0x1

    .line 45
    .line 46
    new-array v4, v3, [Ljava/lang/Object;

    .line 47
    const/4 v5, 0x0

    .line 48
    .line 49
    aput-object v0, v4, v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 61
    return v3
.end method
