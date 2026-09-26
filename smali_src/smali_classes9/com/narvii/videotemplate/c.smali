.class public final synthetic Lcom/narvii/videotemplate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/videotemplate/c;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/videotemplate/c;->b:Lcom/narvii/videotemplate/VideoTemplateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/videotemplate/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/videotemplate/c;->b:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->a(Ljava/util/List;Lcom/narvii/videotemplate/VideoTemplateManager;)V

    return-void
.end method
