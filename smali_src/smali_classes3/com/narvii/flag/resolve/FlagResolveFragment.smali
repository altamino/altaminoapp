.class public Lcom/narvii/flag/resolve/FlagResolveFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveFragment$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/FlagResolveFragment$2;-><init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;-><init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V

    .line 6
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "flag_item"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/flag/model/Flag;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/flag/model/Flag;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 20
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d028d

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0171

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/widget/ThumbImageView;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    const p2, 0x7f0a09f9

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 48
    .line 49
    .line 50
    const p2, 0x7f0a0dda

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    check-cast p2, Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/flag/model/Flag;->getStrikeSpanStr(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const p2, 0x7f0a05ca

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    new-instance p2, Lcom/narvii/flag/resolve/FlagResolveFragment$1;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p0}, Lcom/narvii/flag/resolve/FlagResolveFragment$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method
