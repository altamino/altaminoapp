.class Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/WebViewGlueCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LAZY_COMPAT_CONVERTER_HOLDER"
.end annotation


# static fields
.field static final INSTANCE:Landroidx/webkit/internal/WebkitToCompatConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/webkit/internal/WebkitToCompatConverter;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->d()Landroidx/webkit/internal/WebViewProviderFactory;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/webkit/internal/WebkitToCompatConverter;-><init>(Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;)V

    .line 14
    .line 15
    sput-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebkitToCompatConverter;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
