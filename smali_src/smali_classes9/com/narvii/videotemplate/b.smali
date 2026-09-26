.class public final synthetic Lcom/narvii/videotemplate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/videotemplate/b;->a:Lcom/narvii/videotemplate/VideoTemplateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/videotemplate/b;->a:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->c(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    return-void
.end method
