.class public Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/poweruser/a;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 12
    return-void
.end method


# virtual methods
.method public addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 6
    return-object p0
.end method

.method public attachBlogCateLog(Ljava/util/List;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)",
            "Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->d(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/util/List;)V

    .line 6
    return-object p0
.end method

.method public build()Lcom/narvii/poweruser/AdvancedOptionDialog;
    .locals 1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    return-object v0
.end method

.method public nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->e(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/Feed;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->z(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Feed;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/Feed;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->z(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Feed;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Comment;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/model/Comment;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->y(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->x(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatThread;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_3
    instance-of v0, p1, Lcom/narvii/model/ChatMessage;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->w(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_4
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 72
    .line 73
    check-cast p1, Lcom/narvii/model/User;

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->B(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_5
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 86
    .line 87
    .line 88
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->A(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/SharedFile;)V

    .line 89
    :cond_6
    :goto_0
    return-object p0
.end method
