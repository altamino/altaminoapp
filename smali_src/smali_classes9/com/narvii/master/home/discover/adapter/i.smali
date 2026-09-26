.class public final synthetic Lcom/narvii/master/home/discover/adapter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVContext;

.field public final synthetic b:Lcom/narvii/topic/model/discover/ContentModule;

.field public final synthetic c:Lkotlin/jvm/internal/p0;

.field public final synthetic d:Lkotlin/jvm/internal/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/i;->a:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/i;->b:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/i;->c:Lkotlin/jvm/internal/p0;

    iput-object p4, p0, Lcom/narvii/master/home/discover/adapter/i;->d:Lkotlin/jvm/internal/p0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/i;->a:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/i;->b:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/i;->c:Lkotlin/jvm/internal/p0;

    iget-object v3, p0, Lcom/narvii/master/home/discover/adapter/i;->d:Lkotlin/jvm/internal/p0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->a(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V

    return-void
.end method
