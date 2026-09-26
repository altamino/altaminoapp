.class public Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/permisson/PermissionRationaleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public addPermissionDeniedHint(I)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionDeniedHint(I)V

    return-object p0
.end method

.method public addPermissionDeniedHint(Ljava/lang/String;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 1
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionDeniedHint(Ljava/lang/String;)V

    return-object p0
.end method

.method public addPermissionRationale(II)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionRationale(II)V

    return-object p0
.end method

.method public addPermissionRationale(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionRationale(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/narvii/permisson/PermissionRationaleDialog$Builder;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->d(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)V

    .line 6
    return-object p0
.end method

.method public setCancelCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/narvii/permisson/PermissionRationaleDialog$Builder;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->e(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)V

    .line 6
    return-object p0
.end method

.method public setDeniedHintInfo(Ljava/lang/String;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->setDeniedInfo(Ljava/lang/String;)V

    .line 6
    return-object p0
.end method

.method public setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/narvii/permisson/PermissionRationaleDialog$Builder;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 22
    .line 23
    sget-object v2, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_NAMES:Landroidx/collection/SimpleArrayMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionDeniedHint(I)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object p0
.end method

.method public setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/narvii/permisson/PermissionRationaleDialog$Builder;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    sget-object v1, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_NAMES:Landroidx/collection/SimpleArrayMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v1

    .line 32
    .line 33
    sget-object v2, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_RATIONALES:Landroidx/collection/SimpleArrayMap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v0

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1, v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionRationale(II)V

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->parepageDialog()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->show()V

    .line 11
    return-void
.end method
