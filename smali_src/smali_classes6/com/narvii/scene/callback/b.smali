.class public final synthetic Lcom/narvii/scene/callback/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/callback/b;->a:Lcom/narvii/scene/template/SceneTemplateHelper;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/callback/b;->a:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {v0, p1}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->a(Lcom/narvii/scene/template/SceneTemplateHelper;Landroid/content/DialogInterface;)V

    return-void
.end method
