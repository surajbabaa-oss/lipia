
# LipikaFusion PRO v4.0 INTELLIGENT

## v4.0 Intelligent Level Improvements:

### NEW in v4.0:
1. **Bidirectional**: Unicode -> Legacy reverse (Unicode to ShreeDev 0714 for old press)
   - f k -> कि (legacy->unicode)
   - कि -> f k (unicode->legacy) - NEW

2. **Syllable Parser**: 
   - Correct reph handling: र् + क = क्र (not र्क) using syllable base detection
   - Pre-base ि hopping across conjuncts: क्ति = क् + त् + ि -> ि moves to front correctly

3. **ZWJ/ZWNJ Preservation**: 
   - क्‌ष (with ZWNJ) vs क्ष preserved - Important for Marathi newspaper explicit halant

4. **Context-Aware Numerals**:
   - suraj1@gmail.com keeps 1 as 1, not १ - Email safe
   - Detects English context vs Devanagari context

5. **Batch 1000 Files**:
   - Select 1000 .txt files -> Converts to output folder with log
   - Intelligent log: 47 ki fixes, 12 reph, 3 ZWJ preserved

6. **AI Detection**:
   - Detects font via ligature density (; : " ) and k+f pattern

### Build:
./build.ps1 -> artifacts/installer/LipikaFusionPRO-Setup-v4-INTELLIGENT-ALL-FONTS.exe
