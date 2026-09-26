.class public final Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnparseableExtraField"
.end annotation


# static fields
.field public static final READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final READ_KEY:I = 0x2

.field public static final SKIP:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final SKIP_KEY:I = 0x1

.field public static final THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final THROW_KEY:I


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->SKIP:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 17
    .line 18
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    .line 23
    .line 24
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 25
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    .line 6
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    return v0
.end method
