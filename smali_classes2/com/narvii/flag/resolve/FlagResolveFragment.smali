.class public Lcom/narvii/flag/resolve/FlagResolveFragment;
.super Lcom/narvii/list/NVListFragment;
.source "FlagResolveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;
    }
.end annotation


# instance fields
.field final entryCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFlag:Lcom/narvii/flag/model/Flag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 102
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/FlagResolveFragment$2;-><init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 63
    new-instance p1, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;-><init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "flag_item"

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/flag/model/Flag;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/model/Flag;

    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0263

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    if-eqz p2, :cond_0

    const p2, 0x7f0900e4

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ThumbImageView;

    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p2, 0x7f090764

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NicknameView;

    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p2, 0x7f090af8

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/flag/model/Flag;->getStrikeSpanStr(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f09048a

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/flag/resolve/FlagResolveFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/flag/resolve/FlagResolveFragment$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
