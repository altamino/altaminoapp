.class public final Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAutofillType.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAutofillType.android.kt\nandroidx/compose/ui/autofill/AndroidAutofillType_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"
.end annotation


# static fields
.field private static final androidAutofillTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/ui/autofill/AutofillType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    new-array v0, v0, [Lw7/u;

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->EmailAddress:Landroidx/compose/ui/autofill/AutofillType;

    .line 7
    .line 8
    const-string v2, "emailAddress"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->Username:Landroidx/compose/ui/autofill/AutofillType;

    .line 18
    .line 19
    const-string/jumbo v2, "username"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->Password:Landroidx/compose/ui/autofill/AutofillType;

    .line 29
    .line 30
    const-string v2, "password"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x2

    .line 36
    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->NewUsername:Landroidx/compose/ui/autofill/AutofillType;

    .line 40
    .line 41
    const-string v2, "newUsername"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x3

    .line 47
    .line 48
    aput-object v1, v0, v2

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->NewPassword:Landroidx/compose/ui/autofill/AutofillType;

    .line 51
    .line 52
    const-string v2, "newPassword"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x4

    .line 58
    .line 59
    aput-object v1, v0, v2

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PostalAddress:Landroidx/compose/ui/autofill/AutofillType;

    .line 62
    .line 63
    const-string v2, "postalAddress"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x5

    .line 69
    .line 70
    aput-object v1, v0, v2

    .line 71
    .line 72
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PostalCode:Landroidx/compose/ui/autofill/AutofillType;

    .line 73
    .line 74
    const-string v2, "postalCode"

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 78
    move-result-object v1

    .line 79
    const/4 v2, 0x6

    .line 80
    .line 81
    aput-object v1, v0, v2

    .line 82
    .line 83
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardNumber:Landroidx/compose/ui/autofill/AutofillType;

    .line 84
    .line 85
    const-string v2, "creditCardNumber"

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x7

    .line 91
    .line 92
    aput-object v1, v0, v2

    .line 93
    .line 94
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardSecurityCode:Landroidx/compose/ui/autofill/AutofillType;

    .line 95
    .line 96
    const-string v2, "creditCardSecurityCode"

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    aput-object v1, v0, v2

    .line 105
    .line 106
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationDate:Landroidx/compose/ui/autofill/AutofillType;

    .line 107
    .line 108
    const-string v2, "creditCardExpirationDate"

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    const/16 v2, 0x9

    .line 115
    .line 116
    aput-object v1, v0, v2

    .line 117
    .line 118
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationMonth:Landroidx/compose/ui/autofill/AutofillType;

    .line 119
    .line 120
    const-string v2, "creditCardExpirationMonth"

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    const/16 v2, 0xa

    .line 127
    .line 128
    aput-object v1, v0, v2

    .line 129
    .line 130
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationYear:Landroidx/compose/ui/autofill/AutofillType;

    .line 131
    .line 132
    const-string v2, "creditCardExpirationYear"

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    const/16 v2, 0xb

    .line 139
    .line 140
    aput-object v1, v0, v2

    .line 141
    .line 142
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationDay:Landroidx/compose/ui/autofill/AutofillType;

    .line 143
    .line 144
    const-string v2, "creditCardExpirationDay"

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    const/16 v2, 0xc

    .line 151
    .line 152
    aput-object v1, v0, v2

    .line 153
    .line 154
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressCountry:Landroidx/compose/ui/autofill/AutofillType;

    .line 155
    .line 156
    const-string v2, "addressCountry"

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    const/16 v2, 0xd

    .line 163
    .line 164
    aput-object v1, v0, v2

    .line 165
    .line 166
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressRegion:Landroidx/compose/ui/autofill/AutofillType;

    .line 167
    .line 168
    const-string v2, "addressRegion"

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    const/16 v2, 0xe

    .line 175
    .line 176
    aput-object v1, v0, v2

    .line 177
    .line 178
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressLocality:Landroidx/compose/ui/autofill/AutofillType;

    .line 179
    .line 180
    const-string v2, "addressLocality"

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    const/16 v2, 0xf

    .line 187
    .line 188
    aput-object v1, v0, v2

    .line 189
    .line 190
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressStreet:Landroidx/compose/ui/autofill/AutofillType;

    .line 191
    .line 192
    const-string/jumbo v2, "streetAddress"

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    const/16 v2, 0x10

    .line 199
    .line 200
    aput-object v1, v0, v2

    .line 201
    .line 202
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->AddressAuxiliaryDetails:Landroidx/compose/ui/autofill/AutofillType;

    .line 203
    .line 204
    const-string v2, "extendedAddress"

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    const/16 v2, 0x11

    .line 211
    .line 212
    aput-object v1, v0, v2

    .line 213
    .line 214
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PostalCodeExtended:Landroidx/compose/ui/autofill/AutofillType;

    .line 215
    .line 216
    const-string v2, "extendedPostalCode"

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    const/16 v2, 0x12

    .line 223
    .line 224
    aput-object v1, v0, v2

    .line 225
    .line 226
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonFullName:Landroidx/compose/ui/autofill/AutofillType;

    .line 227
    .line 228
    const-string v2, "personName"

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    const/16 v2, 0x13

    .line 235
    .line 236
    aput-object v1, v0, v2

    .line 237
    .line 238
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonFirstName:Landroidx/compose/ui/autofill/AutofillType;

    .line 239
    .line 240
    const-string v2, "personGivenName"

    .line 241
    .line 242
    .line 243
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    const/16 v2, 0x14

    .line 247
    .line 248
    aput-object v1, v0, v2

    .line 249
    .line 250
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonLastName:Landroidx/compose/ui/autofill/AutofillType;

    .line 251
    .line 252
    const-string v2, "personFamilyName"

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    const/16 v2, 0x15

    .line 259
    .line 260
    aput-object v1, v0, v2

    .line 261
    .line 262
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonMiddleName:Landroidx/compose/ui/autofill/AutofillType;

    .line 263
    .line 264
    const-string v2, "personMiddleName"

    .line 265
    .line 266
    .line 267
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 268
    move-result-object v1

    .line 269
    .line 270
    const/16 v2, 0x16

    .line 271
    .line 272
    aput-object v1, v0, v2

    .line 273
    .line 274
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonMiddleInitial:Landroidx/compose/ui/autofill/AutofillType;

    .line 275
    .line 276
    const-string v2, "personMiddleInitial"

    .line 277
    .line 278
    .line 279
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    const/16 v2, 0x17

    .line 283
    .line 284
    aput-object v1, v0, v2

    .line 285
    .line 286
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonNamePrefix:Landroidx/compose/ui/autofill/AutofillType;

    .line 287
    .line 288
    const-string v2, "personNamePrefix"

    .line 289
    .line 290
    .line 291
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 292
    move-result-object v1

    .line 293
    .line 294
    const/16 v2, 0x18

    .line 295
    .line 296
    aput-object v1, v0, v2

    .line 297
    .line 298
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PersonNameSuffix:Landroidx/compose/ui/autofill/AutofillType;

    .line 299
    .line 300
    const-string v2, "personNameSuffix"

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 304
    move-result-object v1

    .line 305
    .line 306
    const/16 v2, 0x19

    .line 307
    .line 308
    aput-object v1, v0, v2

    .line 309
    .line 310
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumber:Landroidx/compose/ui/autofill/AutofillType;

    .line 311
    .line 312
    const-string v2, "phoneNumber"

    .line 313
    .line 314
    .line 315
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 316
    move-result-object v1

    .line 317
    .line 318
    const/16 v2, 0x1a

    .line 319
    .line 320
    aput-object v1, v0, v2

    .line 321
    .line 322
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumberDevice:Landroidx/compose/ui/autofill/AutofillType;

    .line 323
    .line 324
    const-string v2, "phoneNumberDevice"

    .line 325
    .line 326
    .line 327
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    const/16 v2, 0x1b

    .line 331
    .line 332
    aput-object v1, v0, v2

    .line 333
    .line 334
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneCountryCode:Landroidx/compose/ui/autofill/AutofillType;

    .line 335
    .line 336
    const-string v2, "phoneCountryCode"

    .line 337
    .line 338
    .line 339
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 340
    move-result-object v1

    .line 341
    .line 342
    const/16 v2, 0x1c

    .line 343
    .line 344
    aput-object v1, v0, v2

    .line 345
    .line 346
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumberNational:Landroidx/compose/ui/autofill/AutofillType;

    .line 347
    .line 348
    const-string v2, "phoneNational"

    .line 349
    .line 350
    .line 351
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 352
    move-result-object v1

    .line 353
    .line 354
    const/16 v2, 0x1d

    .line 355
    .line 356
    aput-object v1, v0, v2

    .line 357
    .line 358
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->Gender:Landroidx/compose/ui/autofill/AutofillType;

    .line 359
    .line 360
    const-string v2, "gender"

    .line 361
    .line 362
    .line 363
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 364
    move-result-object v1

    .line 365
    .line 366
    const/16 v2, 0x1e

    .line 367
    .line 368
    aput-object v1, v0, v2

    .line 369
    .line 370
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateFull:Landroidx/compose/ui/autofill/AutofillType;

    .line 371
    .line 372
    const-string v2, "birthDateFull"

    .line 373
    .line 374
    .line 375
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 376
    move-result-object v1

    .line 377
    .line 378
    const/16 v2, 0x1f

    .line 379
    .line 380
    aput-object v1, v0, v2

    .line 381
    .line 382
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateDay:Landroidx/compose/ui/autofill/AutofillType;

    .line 383
    .line 384
    const-string v2, "birthDateDay"

    .line 385
    .line 386
    .line 387
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 388
    move-result-object v1

    .line 389
    .line 390
    const/16 v2, 0x20

    .line 391
    .line 392
    aput-object v1, v0, v2

    .line 393
    .line 394
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateMonth:Landroidx/compose/ui/autofill/AutofillType;

    .line 395
    .line 396
    const-string v2, "birthDateMonth"

    .line 397
    .line 398
    .line 399
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 400
    move-result-object v1

    .line 401
    .line 402
    const/16 v2, 0x21

    .line 403
    .line 404
    aput-object v1, v0, v2

    .line 405
    .line 406
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->BirthDateYear:Landroidx/compose/ui/autofill/AutofillType;

    .line 407
    .line 408
    const-string v2, "birthDateYear"

    .line 409
    .line 410
    .line 411
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 412
    move-result-object v1

    .line 413
    .line 414
    const/16 v2, 0x22

    .line 415
    .line 416
    aput-object v1, v0, v2

    .line 417
    .line 418
    sget-object v1, Landroidx/compose/ui/autofill/AutofillType;->SmsOtpCode:Landroidx/compose/ui/autofill/AutofillType;

    .line 419
    .line 420
    const-string/jumbo v2, "smsOTPCode"

    .line 421
    .line 422
    .line 423
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 424
    move-result-object v1

    .line 425
    .line 426
    const/16 v2, 0x23

    .line 427
    .line 428
    aput-object v1, v0, v2

    .line 429
    .line 430
    .line 431
    invoke-static {v0}, Lkotlin/collections/p0;->j([Lw7/u;)Ljava/util/HashMap;

    .line 432
    move-result-object v0

    .line 433
    .line 434
    sput-object v0, Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;->androidAutofillTypes:Ljava/util/HashMap;

    .line 435
    return-void
.end method

.method public static final a(Landroidx/compose/ui/autofill/AutofillType;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroidx/compose/ui/autofill/AutofillType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;->androidAutofillTypes:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Unsupported autofill type"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
.end method
