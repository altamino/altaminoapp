.class public final Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDefaultStatus:I

.field private mOverrideRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->mDefaultStatus:I

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->mOverrideRules:Ljava/util/Map;

    .line 13
    return-void
.end method

.method static synthetic a(Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->mDefaultStatus:I

    .line 3
    return p0
.end method

.method static synthetic b(Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->mOverrideRules:Ljava/util/Map;

    .line 3
    return-object p0
.end method
