.class public Lcom/narvii/util/debug/CrashReportFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field info:Ljava/lang/String;

.field larkRobot:Lcom/narvii/util/debug/LarkRobot;

.field screenshot:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/debug/LarkRobot;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/LarkRobot;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/debug/CrashReportFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    const-string v0, "path"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/util/debug/CrashReportFragment;->info:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const/16 v1, 0x2e

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 37
    move-result v2

    .line 38
    const/4 v3, -0x1

    .line 39
    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    new-instance v1, Ljava/io/File;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, ".jpg"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 79
    move-result-wide v2

    .line 80
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    cmp-long p1, v2, v4

    .line 84
    .line 85
    if-lez p1, :cond_0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    .line 89
    :goto_0
    iput-object v1, p0, Lcom/narvii/util/debug/CrashReportFragment;->screenshot:Ljava/io/File;

    .line 90
    :cond_1
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
    const p2, 0x7f0a06eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/util/debug/CrashReportFragment;->screenshot:Ljava/io/File;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/debug/CrashReportFragment;->screenshot:Ljava/io/File;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const p2, 0x7f0a0e51

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/util/debug/CrashReportFragment;->info:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/util/debug/CrashReportFragment$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/narvii/util/debug/CrashReportFragment$1;-><init>(Lcom/narvii/util/debug/CrashReportFragment;)V

    .line 49
    .line 50
    const-string p2, "Send"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
