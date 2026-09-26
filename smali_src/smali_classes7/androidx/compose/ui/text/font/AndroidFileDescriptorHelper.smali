.class final Landroidx/compose/ui/text/font/AndroidFileDescriptorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/font/AndroidFileDescriptorHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/AndroidFileDescriptorHelper;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/AndroidFileDescriptorHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/AndroidFileDescriptorHelper;->INSTANCE:Landroidx/compose/ui/text/font/AndroidFileDescriptorHelper;

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


# virtual methods
.method public final a(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fileDescriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/text/font/c;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/compose/ui/text/font/b;->a(Ljava/io/FileDescriptor;)Landroid/graphics/Typeface$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/ui/text/font/a;->a(Landroid/graphics/Typeface$Builder;)Landroid/graphics/Typeface;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v0, "Builder(fileDescriptor.fileDescriptor).build()"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    return-object p1
.end method
