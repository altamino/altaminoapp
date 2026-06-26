.class public Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
.super Ljava/lang/Object;
.source "PermissionRationaleDialog.java"


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

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-direct {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    .line 181
    iput-object p1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addPermissionDeniedHint(I)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-virtual {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionDeniedHint(I)V

    return-object p0
.end method

.method public addPermissionDeniedHint(Ljava/lang/String;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-virtual {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionDeniedHint(Ljava/lang/String;)V

    return-object p0
.end method

.method public addPermissionRationale(II)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionRationale(II)V

    return-object p0
.end method

.method public addPermissionRationale(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

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

    .line 231
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-static {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->access$102(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)Lcom/narvii/util/Callback;

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

    .line 236
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-static {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->access$002(Lcom/narvii/permisson/PermissionRationaleDialog;Lcom/narvii/util/Callback;)Lcom/narvii/util/Callback;

    return-object p0
.end method

.method public setDeniedHintInfo(Ljava/lang/String;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-virtual {v0, p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->setDeniedInfo(Ljava/lang/String;)V

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

    if-nez p1, :cond_0

    return-object p0

    .line 209
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    sget-object v2, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_NAMES:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionDeniedHint(I)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/narvii/permisson/PermissionRationaleDialog$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 198
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    sget-object v2, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_NAMES:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_RATIONALES:Landroid/support/v4/util/SimpleArrayMap;

    .line 200
    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    invoke-virtual {v1, v2, v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->addPermissionRationale(II)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-virtual {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->parepageDialog()V

    .line 242
    iget-object v0, p0, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->rationaleDialog:Lcom/narvii/permisson/PermissionRationaleDialog;

    invoke-virtual {v0}, Lcom/narvii/permisson/PermissionRationaleDialog;->show()V

    return-void
.end method
