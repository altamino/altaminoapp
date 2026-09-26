.class public final synthetic Lcom/narvii/master/home/discover/adapter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVContext;

.field public final synthetic b:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/f;->a:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/f;->b:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/f;->a:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/f;->b:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->i(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method
