.class public final synthetic Lcom/narvii/scene/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/dialog/SceneMediaPickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/dialog/a;->a:Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/dialog/a;->a:Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    invoke-static {v0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->a(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V

    return-void
.end method
