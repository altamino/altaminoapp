.class public final Landroidx/webkit/ProxyConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/ProxyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBypassRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/ProxyConfig$ProxyRule;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseBypass:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mReverseBypass:Z

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mBypassRules:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/ProxyConfig;)V
    .locals 1
    .param p1    # Landroidx/webkit/ProxyConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mReverseBypass:Z

    .line 5
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mBypassRules:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->c()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/webkit/ProxyConfig$Builder;->mReverseBypass:Z

    return-void
.end method
